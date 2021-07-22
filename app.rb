require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require_relative 'lib/app/application.rb'


def perform
  match = Application.new
  match.launch_game
end

perform()