# Seed data

user1 = User.create!(
  email: "ds@example.com", password: "test123",
  password_confirmation: "test123"
)
user2 = User.create!(
  email: "ds2@example.com", password: "test123",
  password_confirmation: "test123", referred_by_id: user1.id
)
user1.referrals.create!(email: "ds@referral.com")

puts "User created"
