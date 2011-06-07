require "spec_helper"

describe "No robots middleware" do
  let :no_robots_tag do
    '<meta name="robots" content="noindex, nofollow"/>'
  end

  it "adds the no robots tag to prototypes" do
    get "/p"
    response.body.should include(no_robots_tag)
  end

  it "doesn't add anything in other controllers" do
    get "/not_a_prototype"
    response.body.should include("NOT A PROTOTYPE")
    response.body.should_not include(no_robots_tag)
  end
end
