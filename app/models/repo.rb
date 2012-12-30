class Repo < ActiveRecord::Base
  attr_accessible :description, :name, :path
end
