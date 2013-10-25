require "spec_helper"

describe "No prototype found" do
  context "when #consider_all_requests_local is set to false" do
    it "responds with a 404 status code" do
      Rails.application.config.stub(consider_all_requests_local: false)

      get "/p/i_do_not_exist"
      response.status.should == 404
    end
  end

  context "when #consider_all_requests_local is set to true" do
    it "raises an ActionView::MissingTemplate exception" do
      Rails.application.config.stub(consider_all_requests_local: true)

      expect {
        get "/p/i_do_not_exist"
      }.to raise_error(ActionView::MissingTemplate)
    end
  end
end
