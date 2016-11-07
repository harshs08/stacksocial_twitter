require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TwitterHelper. For example:
#
# describe TwitterHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TwitterHelper, type: :helper do
  describe "#extract_link" do
    it "extrack link from tweets" do
      expect(helper.extract_link('hello tweet from @someone')).to eq "hello tweet from " \
      "@<a class=\"tweet-url username\" href=\"https://twitter.com/someone\" rel=\"nofollow\">someone</a>"
    end
  end
end
