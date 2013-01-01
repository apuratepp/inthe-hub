class Repo < ActiveRecord::Base
  attr_accessible :description, :name, :path
  
  REPO_PATH = '/Users/apuratep/Developer/code/inthe'
  
  def rug
    Rugged::Repository.new(self.path)
  end
  def self.list
  	repos = []
  	Dir.entries(REPO_PATH).each do |filename|
  		path = File.join(REPO_PATH, filename)
  		begin
	  		repos << Rugged::Repository.new(path)
	  	rescue
	  		# not a git repo
	  	end
  	end
  	repos
  end

end
