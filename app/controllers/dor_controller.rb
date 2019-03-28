class DorController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :home

  def home; end

  def caller
    puts "caller triggered"
    message = JSON.parse(request.body.read)["message"]
    return unless message == "hi"
    puts "successful trigger"
    system("heroku run rake caller:search")
  end
end
