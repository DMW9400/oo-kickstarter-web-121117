require_relative "project"
require 'pry'

class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []

  end

  def back_project(project)
    # binding.pry
    @backed_projects << project
    # backed_projects[0].backers << self
    @backed_projects.each_with_index do |pr, idx|
          # binding.pry
      @backed_projects[idx].backers << self
    end


    # @backed_projects[0] << self
    # binding.pry
  end

  #
  #   Backer - More Advanced #back_project
  #     also adds the backer to the project's backers array (FAILED - 1)
  #


end
