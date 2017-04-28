require "spec_helper"

describe "No prototype found" do
  context "when #consider_all_requests_local is set to false" do
    it "responds with a 404 status code" do
      allow(Rails.application.config).to receive_messages(consider_all_requests_local: false)

      get "/p/i_do_not_exist"
      expect(response.status).to eq(404)
    end
  end

  context "when #consider_all_requests_local is set to true" do
    it "raises an ActionView::MissingTemplate exception" do
      allow(Rails.application.config).to receive_messages(consider_all_requests_local: true)

      expect {
        get "/p/i_do_not_exist"
      }.to raise_error(ActionView::MissingTemplate)
    end
  end
end
