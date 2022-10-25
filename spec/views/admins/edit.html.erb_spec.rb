require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  let(:admin) {
    Admin.create!(
      name: "MyString",
      last_name: "MyString",
      email: "MyString",
      password: "MyString",
      login: "MyString"
    )
  }

  before(:each) do
    assign(:admin, admin)
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(admin), "post" do

      assert_select "input[name=?]", "admin[name]"

      assert_select "input[name=?]", "admin[last_name]"

      assert_select "input[name=?]", "admin[email]"

      assert_select "input[name=?]", "admin[password]"

      assert_select "input[name=?]", "admin[login]"
    end
  end
end
