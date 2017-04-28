require "spec_helper"

describe "#before_carpentry" do
  it "gets run when implemented in ApplicationController" do
    get "/p/notes"
    expect(response.body).to include("BEFORE CARPENTRY")
  end
end
