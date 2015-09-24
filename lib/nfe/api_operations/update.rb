module Nfe
  module ApiOperations
    module Update
      def save
        params_to_update = {}
        self.serialize_params.each do |key|
          return if (@values[key] || @values[key.to_s]).is_a? Nfe::NfeObject
          params_to_update[key] = (@values[key] || @values[key.to_s]) if @values
        end
        puts params_to_update

        update(params_to_update)
      end

      def update(params=nil, url_sufix=nil)
        method = :post
        response = api_request("#{url}/#{url_sufix}",method,params)
        reflesh_object(response)
      end
    end
  end
end