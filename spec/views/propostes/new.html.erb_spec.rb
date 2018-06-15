require 'rails_helper'

RSpec.describe "propostes/new", type: :view do
  before(:each) do
    assign(:proposte, Proposte.new(
      :nome => "MyString",
      :descricao => "MyText",
      :valor => "9.99",
      :cidade => "MyString"
    ))
  end

  it "renders new proposte form" do
    render

    assert_select "form[action=?][method=?]", propostes_path, "post" do

      assert_select "input[name=?]", "proposte[nome]"

      assert_select "textarea[name=?]", "proposte[descricao]"

      assert_select "input[name=?]", "proposte[valor]"

      assert_select "input[name=?]", "proposte[cidade]"
    end
  end
end
