require 'spec_helper'

describe ProjectsController do

	it "displays an error for a missing project" do
		get :show, :id => "not-here"
		response.should redirect_to(projects_path)
		message = "The projected you were looking for could not be found."
		flasj[:alert].should eql(message)
	end

end
