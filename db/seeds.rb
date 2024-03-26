user_one = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email
)

10.times do
  user_two = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )

  Payment.create(
    amount: Faker::Number.number(digits: 4),
    sender_id: user_one.id,
    recipient_id: user_two.id
  )
  Payment.create(
    amount: Faker::Number.number(digits: 4),
    sender_id: user_two.id,
    recipient_id: user_one.id
  )
end