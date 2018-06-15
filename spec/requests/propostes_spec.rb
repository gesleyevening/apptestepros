require 'rails_helper'

RSpec.describe "Propostes", type: :request do
  describe "GET /propostes" do
    it "works! (now write some real specs)" do
      get propostes_path
      expect(response).to have_http_status(200)
    end
  end
end
