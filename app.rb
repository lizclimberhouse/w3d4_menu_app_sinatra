require 'sinatra/base'

ENV['RACK_ENV'] ||= "development"
require "bundler"
Bundler.require :default, ENV['RACK_ENV'].to_sym
require_relative 'routes'

class Menu_Items < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
  set :views, Proc.new { FILE.join(root, "views") }
end


