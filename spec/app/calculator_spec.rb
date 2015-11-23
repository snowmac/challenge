describe "Calculator" do 

  context "close, but slightly bigger then range" do 
    let(:color_1) { "0,0,0" }
    let(:color_2) { "50,50,50" }
    let(:expected_value) { 20.78 }

    subject(:calc) { Calculator.new(color_1, color_2) }

    it { expect(calc.compute).to eq(expected_value) }
    it { expect(calc.is_acceptable?).to eq(false) }
  end

end