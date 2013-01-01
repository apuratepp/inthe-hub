class Repo < ActiveRecord::Base
  attr_accessible :description, :name, :path
  
  REPO_DIRS = REPOS_CONFIG['repo_dirs']
  
  def rug
    Rugged::Repository.new(self.path)
  end
  def self.list
  	repos = []

  	REPO_DIRS.each do |dir|
      Dir.entries(dir).each do |filename|
  		  path = File.join(dir, filename)
  		  begin
	  	  	repos << Rugged::Repository.new(path)
	  	  rescue
	  	  	# not a git repo
	  	  end
      end
  	end
  	repos
  end

end
