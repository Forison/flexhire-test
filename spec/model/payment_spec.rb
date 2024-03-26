require "rails_helper"

RSpec.describe Payment, type: :model do
 
  describe 'associations' do
    it { should belong_to(:sender).class_name('User') }
    it { should belong_to(:recipient).class_name('User') }
  end
  describe 'validation' do
    it { is_expected.to validate_presence_of :amount }
  end
end