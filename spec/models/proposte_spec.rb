require 'rails_helper'

RSpec.describe Proposte, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  before do
    @propostes = Proposte.new(nome: "Propsota de teste")
  end
  
  subject { @propostes }
  
  describe "Nenhum nome válido" do
    before { @propostes.nome = " " }
    it { should_not be_valid }
  end
  
end
