REPOS_CONFIG = YAML.load_file(Rails.root.join('config', 'repos.yml'))[Rails.env]

class ApplicationController < ActionController::Base
  protect_from_forgery
end
