require "opt_in/version"
require "rest-client"
require "json"

module OptIn
  class Client
    def initialize(url)
      @url = url
    end

    def create(params)
      JSON.parse RestClient.post(@url, params)
    end

    def update(params)
      RestClient.put @url, params
    end

    def deactivate(id)
      RestClient.delete URI.join(@url, id.to_s).to_s
    end

    # Dictionaries

    def companies
      JSON.parse RestClient.get(URI.join(@url, 'companies').to_s)
    end

    def permission_types
      JSON.parse RestClient.get(URI.join(@url, 'permission_types').to_s)
    end

    def channels
      JSON.parse RestClient.get(URI.join(@url, 'channels').to_s)
    end
  end
end
