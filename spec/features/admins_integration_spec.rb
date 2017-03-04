require 'rails_helper'

RSpec.describe "the rails admin path", type: :feature do
  before {
    Admin.delete_all
    admin = FactoryGirl.create(:admin)
    sign_in admin
  }

  it "displays the rails_admin console when an admin user navigates to it" do
    visit(rails_admin_path)
    expect(page).to have_content('Site Administration')
  end

end
