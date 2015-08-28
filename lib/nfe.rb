require "rest-client"
require "json"
require "nfe/version"

module Nfe
  @@api_key = ''
  @@company_id = ''

  def self.api_key(api_key)
    @@api_key = api_key
  end

  def self.company_id(company_id)
    @@company_id = company_id
  end

  def self.access_keys
    "#{@@api_key}:#{@@company_id}"
  end
end
