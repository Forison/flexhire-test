# frozen_string_literal: true

module Types
  class PaymentType < Types::BaseObject
    field :id, ID, null: false
    field :amount, Float
    field :sender_id, Integer
    field :recipient_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
