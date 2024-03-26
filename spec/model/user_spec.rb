require "rails_helper"

RSpec.describe User, type: :model do
 
  describe 'associations' do
    # it { should have_many(:posts).class_name('Post') }
  end
  describe 'validation' do
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to allow_value("test@example.org").for(:email) }
    it { is_expected.not_to allow_value("test.org").for(:email) }
  end
end