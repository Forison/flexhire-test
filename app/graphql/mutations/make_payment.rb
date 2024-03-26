module Mutations
  class MakePayment < BaseMutation
    argument :amount, Float, required: true
    argument :sender_id, ID, required: true
    argument :recipient_id, ID, required: true

    def resolve(**arg)
      payment =  Payment.new(arg)

      if payment.save
        payment
      else
        raise GraphQL::ExecutionError.new('OOps! something went wrong, payment could not be made. Please try again later')        
      end
    end
  end
end