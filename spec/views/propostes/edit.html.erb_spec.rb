require 'rails_helper'

RSpec.describe "propostes/edit", type: :view do
  before(:each) do
    @proposte = assign(:proposte, Proposte.create!(
      :nome => "MyString",
      :descricao => "MyText",
      :valor => "9.99",
      :cidade => "MyString"
    ))
  end

  it "renders the edit proposte form" do
    render

    assert_select "form[action=?][method=?]", proposte_path(@proposte), "post" do

      assert_select "input[name=?]", "proposte[nome]"

      assert_select "textarea[name=?]", "proposte[descricao]"

      assert_select "input[name=?]", "proposte[valor]"

      assert_select "input[name=?]", "proposte[cidade]"
    end
  end
end
