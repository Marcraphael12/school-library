require_relative './app'
require './data'
require 'json'

puts 'Welcome to your school library'
# Takes data from json files
initialize_files

#Starts the app
def main
  app = App.new
  app.start
end

main
