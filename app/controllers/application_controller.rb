class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  respond_to :json, :html





  protected
    # Method removes code from child controllers. 'start', 'count', 'from', 'to' come straight from params.
      # 'plural', 'singular' are given when the child controller is the destination of an embedded route.
    def generic_index_action( test, resource, start=nil, count=nil, from=nil, to=nil, plural=nil, singular=nil)

      # domain = "#{request.domain(2)}::"
      # ref = request.env["HTTP_REFERER"].slice 0, request.env["HTTP_REFERER"].length - 1
      # uri = "#{ref}#{request.env["REQUEST_URI"]}"
      # hash = "#{domain}#{Digest::SHA1.hexdigest(uri)}"

      @records = ( @foreign ? @parent.send(plural) : ActiveRecord::Base.connection.execute("select #{JSON.parse(resource.new().to_json()).keys().join(", ")} from #{resource.table_name}") )
      
      @records = serialize_data(@records)
      true  
    end  


    # Method sets up the instance variable @record. It checks if the logged in User is able to preform the 'action'
      # on the given 'resource' and the @record, if found.
      # action - Symbol = The type of action to be checked, e.g. :read, :update, :destroy
      # id - Integer = The ID of the record being searched for
      # resource - Text = A model that can be accessed via a URI and have CRUD ops performed on it
      # plural - Symbol, OPTIONAL = The plural of a possible association. ONLY needed if a @foreign instance variable
      #           has been set.
      # singular - Symbol, OPTIONAL = The singular version of a possible association, i.e. has_one association. ONLY  
      #           needed if a @foreign instance variable has been set.
      # Examples
      #         # No association present
      #         set_up_generic_record( :inspect, params[:id], User ) 
      #
      #         # Association present
      #         set_up_generic_record( :read, params[:id], Criterion, :criterions, :criterion)
    def set_up_generic_record( action, id, resource, plural=nil, singular=nil )
      @record = ( defined?(@foreign) && !plural.nil? && !singular.nil? && @foreign ? ( @parent.respond_to?(plural) ? @parent.send(plural).find(id) : @parent.send(singular) ) : resource.find(id) ) 
    end 


    # Method sends the record with a 200 level status code
        # This method is most often called from controllers that are used as embedded resources
    def two_hundred_response
      respond_with @record, status: 200
    end

    def four_hundred_response
      respond_with @record, status: 404
    end

  private

    def serialize_data(records)
      
      if records.is_a?(PG::Result)

        r = JSON.parse(records.to_json)
        r.map! do |record|
          record.each do |attribute, value|
            if value.eql?("#{value.to_f}")
              record[attribute] = value.to_f
            elsif value.eql?("#{value.to_i}")
              record[attribute] = value.to_i
            end
          end
          record
        end
        return r.to_json
      end

      if records.is_a?(String)
        return records
      end

      return records.to_json

    end

end
