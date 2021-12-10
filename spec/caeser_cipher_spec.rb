#spec/caeser_cipher_spec.rb
require './lib/caeser_cipher.rb'

describe "#caeser_cipher" do
    it "returns cipher for single word five shifts" do
        expect(caeser_cipher("goodbye", 5)).to eql("lttigdj")
    end
end
    
