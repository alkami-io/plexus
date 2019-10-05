require "plexus/version"
require "plexus/railtie"
require "open3"

module Plexus
  class Error < StandardError; end

  class IpAddress
    attr_reader :ip_address

    def initialize
      @ip_address = get_ip_address
    end

    def start_bound_server
      puts "starting rails server bound to ip " + ip_address
      system("rails s -b #{ip_address}")
    end

    private

    def get_ip_address
      puts "obtaining ip..."
      ip = Open3.capture3("ipconfig getifaddr en0")
      puts "parsing ip..."
      parsed_ip = parse_ip_address(ip)
      puts "found ip: " + parsed_ip
      parsed_ip
    end

    def parse_ip_address(ip)
      ip.first.gsub("\n","")
    end
  end
end
