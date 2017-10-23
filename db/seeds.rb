require 'faker'

puts 'Creating 20 fake leads...'
Lead.delete_all
10.times do
  lead = Lead.new(
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    email_sent: Faker::Boolean.boolean(0.2),
    first_name: Faker::Name.unique.name,
    last_name: Faker::Name.unique.name,
    referrer: Faker::Name.unique.name,
    time_last_active: Faker::Date.between(5.days.ago, Date.today),
    created_at: Faker::Date.between(5.days.ago, Date.today),
    updated_at: Faker::Date.between(5.days.ago, Date.today),
    signup_stage: (0..5).to_a.sample
  )
  lead.save!
end
puts 'Finished!'

puts 'Creating 10 fake listings...'
Listing.delete_all
10.times do
  listing = Listing.new(
    accomodates: (1..18).to_a.sample,
    address: "#{Faker::Address.latitude}, #{Faker::Address.longitude}",
    bathrooms: (1..4).to_a.sample,
    bedrooms: (1..8).to_a.sample,
    beds: (1..10).to_a.sample,
    bookings_count: (1..18).to_a.sample,
    photo: Faker::Placeholdit.image,
  )
  listing.save!
end
puts 'Finished!'


puts 'Creating 10 fake bookings...'
Booking.delete_all
10.times do
  booking = Booking.new(
    checkin: Faker::Date.between(10.days.ago, Faker::Date.forward(40)),
    checkout: Faker::Date.forward(23),
    extra_bed_required: (0..5).to_a.sample,
    guest_email: Faker::Internet.email,
    guest_phone: Faker::PhoneNumber.cell_phone,
    guest_photo: Faker::Placeholdit.image,
    nights: (0..14).to_a.sample,
    status: (0..4).to_a.sample
  )
  booking.save!
end
puts 'Finished!'

puts 'Creating 10 fake cleaner...'
Cleaner.delete_all
10.times do
  cleaner = Cleaner.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    active:Faker::Boolean.boolean(0.2),
    phone_number: Faker::PhoneNumber.cell_phone,
    rate: (0..5).to_a.sample,
  )
  cleaner.save!
end
puts 'Finished!'

puts 'Creating 10 fake cleaners_providers...'
CleanerProvider.delete_all
10.times do
  cleaner_provider = CleanerProvider.new(
    name: Faker::Company.name,
    email: Faker::Internet.email,
    internal: Faker::Boolean.boolean(0.2),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  )
  cleaner_provider.save!
end
puts 'Finished!'




