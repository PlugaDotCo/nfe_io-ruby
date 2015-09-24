module Nfe
  class NaturalPeople < NfeObject
    include ApiResource
    include ApiOperations::List
    include ApiOperations::Retrieve

    def self.company_id(company_id)
      @company_id = company_id
    end

    def self.url
      "/v1/companies/#{@company_id}/naturalpeople"
    end

    def url
      "#{self.class.url}/#{self.id}"
    end

    def self.create_from(params)
      obj = self.new
      obj.reflesh_object(params["naturalPeople"])
    end
  end
end