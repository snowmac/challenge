require 'net/http'
require 'yaml'
require 'json'

# Use this class to talk to the APIs
class HttpBase

  def initialize
    @config = YAML::load_file(File.join(__dir__, 'config/apis.yml'))
  end

  def run(options)
    method = options[:method]
    url = options[:url]
    data = options[:data]

    uri = URI("#{@config['api_base_url']}/#{url}")

    if method.downcase == 'get'
      result = run_get(uri)
    elsif method.downcase == 'post'
      result = run_post(uri,data)
    end

    JSON.parse(result)
  end

  private 

  def run_get(uri)
    req = Net::HTTP::Get.new(uri)
    req['Auth-Token'] = @config['key']

    res = Net::HTTP.start(uri.hostname, uri.port) {|http|
      http.request(req)
    }

    res.body
  end

  def run_post(uri, data)
    req = Net::HTTP::Post.new(uri)
    req['Auth-Token'] = @config['key']
    req.content_type = @config['content_type']
    req.body = data

    res = Net::HTTP.start(uri.hostname, uri.port) {|http|
      http.request(req)
    }
    
    res.body
  end

end
