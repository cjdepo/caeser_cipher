#spec/caeser_cipher_spec.rb
require './lib/caeser_cipher.rb'

describe "#caeser_cipher" do
    it "returns cipher for single word" do
        expect(caeser_cipher("goodbye", 5)).to eql("lttigdj")
    end
    it "returns cipher for multiple words" do
        expect(caeser_cipher("good bye", 5)).to eql("ltti gdj")
    end

    it "returns cipher for all shift > 26" do
        expect(caeser_cipher("good bye", 31)).to eql("ltti gdj")
    end

    it "works for capital letters" do
        expect(caeser_cipher("GOOD bye", 5)).to eql("LTTI gdj")
    end

    it "works for negative shift > -26" do
        expect(caeser_cipher("good bye", -1)).to eql("fnnc axd")
    end

    it "works for negative shift < -26" do
        expect(caeser_cipher("good bye", -27)).to eql("fnnc axd")
    end
end
    
