require 'rails_helper'

feature 'Tweeter' do
  scenario 'The tweet hase ' do
    VCR.use_cassette "get_user_tweets", :record => :new_episodes do
      sign_in

      visit root_path

      fill_in 'username', with: 'rails'

      click_button 'Get User Tweets'

      expect(page).to have_content "RT @kaspth: At @rails we’re not always the quickest to respond. Still, it’s nice when it happens: https://t.co/oiQQyVW58x 🎃 Created"
      expect(page).to have_content 'October 3rd, 2016 19:09'
    end
  end

  scenario 'Show user as a link' do
    VCR.use_cassette "get_user_tweets", :record => :new_episodes do
      sign_in

      fill_in 'username', with: 'rails'

      click_button 'Get User Tweets'

      expect(page).to have_link 'railstutorial'
    end
  end
end