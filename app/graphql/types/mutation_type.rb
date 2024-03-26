# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :payment, Types::PaymentType, null: false, mutation: Mutations::MakePayment
  end
end
