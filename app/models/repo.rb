class Repo < ActiveRecord::Base
  attr_accessible :description, :name, :path
  
  
  def rug
    Rugged::Repository.new(self.path)
  end
  
end
