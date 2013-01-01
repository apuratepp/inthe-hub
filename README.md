InThe-Hub
=========

Rails app for listing current git repos on a directory.

## Dependencies

* libgit2: https://github.com/libgit2/libgit2
* rugged gem (development version): https://github.com/libgit2/rugged

## Installation

This is a regular Rails 3 app, but you must edit a file in _config/repos.yml_ which is a YAML file with a list of directories where you have your repositories.