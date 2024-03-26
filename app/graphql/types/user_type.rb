# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :last_name, String
    field :first_name, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :name, String, null: false
    field :sent_payments, PaymentType.connection_type, null: false
    field :received_payments, PaymentType.connection_type, null: false

    def name
      object.first_name + ' ' + object.last_name
    end

    def sent_payments
      object.sent_payments
    end

    def received_payments
      object.received_payments
    end
  end
end
