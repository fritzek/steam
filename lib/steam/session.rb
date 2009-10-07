module Steam
  class Session
    autoload :Rails, 'steam/session/rails'

    # cattr_accessor :host

    attr_accessor :id, :browser
    #, :request, :response, :session, :cookies
    # delegate :headers, :to => :response

    def initialize(browser = nil)
      @browser = browser
      # @id = start
    end

    def start
      # response = post('/test/sessions')
      # raise unless response.code == '200'
      # response.body
    end

    def stop
      # delete("/test/sessions/#{id}")
    end

    def respond_to?(method)
      return true if browser.respond_to?(method)
      super
    end

    def method_missing(method, *args)
      return browser.send(method, *args) if browser.respond_to?(method)
      super
    end

    # def redirect?
    #   response.status/100 == 3
    # end
    #
    # def follow_redirect!
    #   # raise "not a redirect! #{@status} #{@status_message}" unless redirect?
    #   get(headers['location'])
    #   status
    # end
  end
end