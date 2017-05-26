class WelcomeController < ApplicationController
  def index
    @offices = Office.all
  end
end