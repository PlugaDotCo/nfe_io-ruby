module Nfe
  module ApiOperations
    module Delete
      def delete(params)
        method = :delete
        response = api_request(url, method, params)
        reflesh_object(response)
        response
      end
    end
  end
end