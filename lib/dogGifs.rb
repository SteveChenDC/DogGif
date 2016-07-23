# require "dogGifs/version"
require "httparty"

module DogGifs
  include HTTParty
  base_uri "animatedgif.me"

  def self.tagged(tag)
    retrieve_url "/#{tag}.json"
  end

  def self.random
    tagged('dog')
  end

  def self.retrieve_url(response)
    get(response).parsed_response["url"]
  end
end
