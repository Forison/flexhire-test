class User < ApplicationRecord
  has_many :sent_payments, :class_name => 'Payment', :foreign_key => 'sender_id'
  has_many :received_payments, :class_name => 'Payment', :foreign_key => 'recipient_id'

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
