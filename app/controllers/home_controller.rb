class HomeController < ApplicationController
  def index
  	@repos = Repo.list
  end
end
