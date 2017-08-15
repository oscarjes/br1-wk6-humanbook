require 'rails_helper'

RSpec.describe Message, type: :model do
  
  describe "valid message" do
    before do
      adam = User.create name: "Adam", email: "adam@example.com", password: "asdfasdf"
      bob = User.create name: "Bob", email: "bob@example.com", password: "asdfasdf"
      @message = Message.create sender: adam, recipient: bob, body: "asdfasdf"
    end

    it "creates successfully" do
      # expect(@user.valid?).to eq true
      expect(@message).to be_valid
    end
  end
end
