# Time is up, so I will continue after the review
module Mutations
  module Payment
    RSpec.describe MakePayment, type: :request do
      end

      def query
        <<~GQL
          mutation {
            makePayment(
              amount: 1000 
              senderId: 1
              recipieentId: 2
            ) {
              id
              amount
              senderId
              recipientId
            }
          }
        GQL
      end
    end
  end
end