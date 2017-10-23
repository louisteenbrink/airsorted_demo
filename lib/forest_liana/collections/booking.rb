class Forest::Booking
  include ForestLiana::Collection

  collection :bookings
  action 'Call guest'
  action 'Assign to Cleaner'
end
