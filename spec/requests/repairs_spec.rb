require 'rails_helper'

RSpec.describe "Repairs", type: :request do
  describe "GET /repairs" do
    it "works! (now write some real specs)" do
      get repairs_path
      expect(response).to have_http_status(200)
    end
  end
end
