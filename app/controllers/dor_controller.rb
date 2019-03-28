class DorController < ApplicationController
  def home; end

  def caller
    puts "caller triggered"
    message = JSON.parse(request.body.read)["message"]
    return unless message == "hi"
    puts "successful trigger"
    system("heroku run rake caller:search")
  end
end
