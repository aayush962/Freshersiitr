class Resultshello22342211Controller < ApplicationController
  def index
  	@freshers = Fresher.all
  end
end
