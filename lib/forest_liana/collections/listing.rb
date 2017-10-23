class Forest::Listing
  include ForestLiana::Collection

  collection :listings
  action 'Push to Airbnb'
  action 'Push to Tripping'
  action 'Push to VRBO'
end
