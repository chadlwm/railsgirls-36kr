class WelcomeController < ApplicationController
  def index
    @friends = Friend.all
  end
end
