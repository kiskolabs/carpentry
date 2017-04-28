require "spec_helper"

describe "Rendering" do
  it "renders the application root path if defined" do
    get "/"
    expect(response.body).to include("ROOT")
  end

  it "renders index.html.erb at /p" do
    get "/p"
    expect(response.body).to include("INDEX FILE")
  end

  it "renders sites.html.erb at /p/sites" do
    get "/p/sites"
    expect(response.body).to include("SITES FILE")
  end

  it "renders posts/new.html.erb at /p/posts/new" do
    get "/p/posts/new"
    expect(response.body).to include("NEW POST FILE")
  end

  it "renders partials" do
    get "/p/posts/new"
    expect(response.body).to include("FORM PARTIAL")
  end
end
