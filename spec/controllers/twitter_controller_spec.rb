require 'rails_helper'

RSpec.describe TwitterController, type: :controller do
  describe "anonymous user" do
    before :each do
      # This simulates an anonymous user
      login_with nil
    end

    it "should be redirected to signin" do
      get :index
      expect( response ).to redirect_to( new_user_session_path )
    end
  end
  
  it "should let a user see the twitter page" do
    login_with create( :user )
    get :index
    expect( response ).to render_template( :index )
  end

  it 'call TwitterService to get tweets of a user' do
    login_with create( :user )
    get :index, params: { username: 'test' }
    expect( response ).to render_template( :index )
    #expect(TwitterService).to receive(:tweets)
  end
end
