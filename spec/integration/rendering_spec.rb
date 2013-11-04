require "spec_helper"

describe "Rendering" do
  it "renders the application root path if defined" do
    get "/"
    response.body.should include("ROOT")
  end

  it "renders index.html.erb at /p" do
    get "/p"
    response.body.should include("INDEX FILE")
  end

  it "renders sites.html.erb at /p/sites" do
    get "/p/sites"
    response.body.should include("SITES FILE")
  end

  it "renders posts/new.html.erb at /p/posts/new" do
    get "/p/posts/new"
    response.body.should include("NEW POST FILE")
  end

  it "renders partials" do
    get "/p/posts/new"
    response.body.should include("FORM PARTIAL")
  end
end
