require 'spec_helper'
describe "create contact", :type => :feature do

  it "create a contact" do
    expect do
      visit "/contacts/new" 
      fill_in 'Firstname', :with => 'junior'
      fill_in 'Lastname', :with => 'joanis'
      fill_in 'Email', :with => 'junior.jaonis@gmail.com'
      fill_in 'Phone', :with => '0632465955'
      click_button 'Create'
    end.to change{Contact.count}.by(1)
  end
end