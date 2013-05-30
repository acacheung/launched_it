require 'spec_helper'

describe "Comments" do
  describe "GET /comments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit comments_path
      expect(page.status_code).to eql(200)
    end
  end
end
