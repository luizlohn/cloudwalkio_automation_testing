require 'rubygems'
require 'dogapi'



ENV['ENV'] = 'qa1' unless ENV.key? 'ENV'
ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]



$dog = Dogapi::Client.new(ENVIRONMENT['api_key'], ENVIRONMENT['application_key'])
