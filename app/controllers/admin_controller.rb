class AdminController < ApplicationController
  load_and_authorize_resource
  layout "backend"
  def index

  end
end