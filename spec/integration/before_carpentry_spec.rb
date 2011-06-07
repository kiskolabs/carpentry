require "spec_helper"

describe "#before_carpentry" do
  it "gets run when implemented in ApplicationController" do
    get "/p/notes"
    response.body.should include("BEFORE CARPENTRY")
  end
end
