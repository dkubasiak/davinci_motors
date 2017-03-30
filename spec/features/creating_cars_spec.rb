require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang $2300.0 created')
  end

  scenario 'can create a second car' do
    visit '/'
    
    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Camry'
    fill_in 'Year', with: '2010'
    fill_in 'Price', with: '5400'

    click_button 'Create Car'

    expect(page).to have_content('2010 Toyota Camry $5400.0 created')
  end
end
