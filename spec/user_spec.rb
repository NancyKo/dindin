require 'spec_helper'

describe 'User' do
	it "sends email when user signs up" do
		UserMailer.sign_up_email(@user).deliver == true
	end
end