require 'bundler'
Bundler.require

require_relative 'lib/app/application.rb'


def perform
  match = Application.new
end

perform()