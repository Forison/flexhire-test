# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false
    
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end


    field :payment, Types::PaymentType, null: false do
      argument :id, ID, required: true
    end
    def payment(id:)
      Payment.find(id)
    end

    field :payments, [Types::PaymentType], null: false
    def payments
      Payment.all
    end
  end
end
