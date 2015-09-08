module Nfe
  class Company < NfeObject
    include ApiResource
    include ApiOperations::Create
    include ApiOperations::List
    include ApiOperations::Retrieve
    include ApiOperations::Delete
    include ApiOperations::Update

    def self.url
      "/v1/companies"
    end

    def url
      "#{self.class.url}/#{self.id}"
    end

    def self.create_from(params)
      obj = self.new
      obj.reflesh_object(params["companies"])
    end
  end
end