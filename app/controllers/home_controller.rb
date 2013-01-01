class HomeController < ApplicationController
  def index
  	@repos = Repo.list
  end
  def repo
  	@repo = Repo.rug(params[:path])
  end
end
