require 'rails_helper'

RSpec.describe "propostes/index", type: :view do
  before(:each) do
    assign(:propostes, [
      Proposte.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :valor => "9.99",
        :cidade => "Cidade"
      ),
      Proposte.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :valor => "9.99",
        :cidade => "Cidade"
      )
    ])
  end

  it "renders a list of propostes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
  end
end
