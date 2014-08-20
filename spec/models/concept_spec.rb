# encoding: UTF-8
require 'spec_helper'

describe Address do

    before do
 		  @concept = Address.new( calle: "Arteaga y Salazar" )
    end

    subject { @concept }

    it { should respond_to(:calle) }

	it { should be_valid }

	describe "when invalid atribute" do
		before do
			@concept.calle = " "
		end

		it { should have(1).error_on(:calle) }
	end

  describe "when email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
				foo@bar_baz.com foo@bar+baz.com]
				addresses.each do |invalid_address|
					@concept.email = invalid_address
					expect(@concept).not_to be_valid
				end
		end
	end

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@concept.email = valid_address
				expect(@concept).to be_valid
			end
		end
	end

end