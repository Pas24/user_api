require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "validations" do
    it "validate presence of required fields" do
      should validate_presence_of(:email)
      should validate_presence_of(:name)
      should validate_presence_of(:password)
    end
  end
end