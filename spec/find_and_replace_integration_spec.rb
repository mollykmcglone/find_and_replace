require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path', {:type => :feature}) do
  it('accepts a user string entry along with one word to replace and one word to insert and returns a new string') do
    visit('/')
    fill_in('sentence', :with => 'I am walking my cat to the cathedral')
    fill_in('word1', :with => 'cat')
    fill_in('word2', :with => 'dog')
    click_button('Go')
    expect(page).to have_content('I am walking my dog to the doghedral')
  end
end
