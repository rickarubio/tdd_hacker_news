require 'spec_helper'

describe User do
  let!(:user) { User.new(name: "Ezekiel", email: "whatevs", password_hash: "password") }
  context '#initialize' do
    it "should have a name" do
      expect(user.name).to eq("Ezekiel")
    end
  end

  context 'email validation' do
    it "should have a valid email" do
      expect(user.save).to eq(false)
    end
  end

end