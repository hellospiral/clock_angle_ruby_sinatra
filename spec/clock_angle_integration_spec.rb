require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the clock angle path', {:type => :feature}) do
  it('processes a user time entry and returns the number of degrees between the hour and minute hands on a clock') do
    visit('/')
    fill_in('time', :with => '10:30')
    click_button('Go')
    expect(page).to have_content('120')
  end
end
