require 'rails_helper'

RSpec.describe "propostes/show", type: :view do
  before(:each) do
    @proposte = assign(:proposte, Proposte.create!(
      :nome => "Nome",
      :descricao => "MyText",
      :valor => "9.99",
      :cidade => "Cidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Cidade/)
  end
end
