class Repo < ActiveRecord::Base
  attr_accessible :description, :name, :path
  
  
  def rug
    Rugged::Repository.new(self.path)
  end
  def self.list
  	Dir.entries('/Users/apuratep/Developer/code/inthe')
  end

end
