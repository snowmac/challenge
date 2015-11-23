describe "Ink Spec" do 

  context "testing hex to rgb converter" do 
    let(:expected_rgb_string) { "252,252,252" }
    subject(:basic) { Ink.new("#fcfcfc", 2.0, "foobar") }
    it { expect(basic.rgb).to eq(expected_rgb_string) }
  end

end