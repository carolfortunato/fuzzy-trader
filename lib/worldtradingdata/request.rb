class Worldtradingdata::Request
    class << self
        def where(resource_path, query = {})
            response, status = get_json(resource_path, query)
            status == 200 ? response : errors(response)
        end

        def get(search)
            response, status = get_json(search)
            status == 200 ? response : errors(response)
        end

        def errors(response)
            error = { errors: { status: response["status"], message: response["message"] } }
            response.merge(error)
        end
  
        def get_json(root_path, query = {})
            query_string = query.map{|k,v| "#{k}=#{v}"}.join("&")
            path = query.empty? ? root_path : "#{root_path}?#{query_string}"
            response = api.get
            [JSON.parse(response.body), response.status]
        end

        def api
            Worldtradingdata::Connection.api
        end
    end
end
