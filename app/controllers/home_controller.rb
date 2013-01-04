class HomeController < ApplicationController
  def index
  	@repos = Repo.list.sort_by {|repo| Time.at(repo.lookup(repo.head.target).time) }
  	@repos.reverse!
  end
  def repo
  	@repo = Repo.rug(params[:path])
  end
end
