# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ringtwice_session',
  :secret      => '559f5a2e445fc079ee8fe98f74b1ccffdbdd6d247a8559513093c9fda3fc7c22de6d0ead0f2fcc39abad75bcd3ca09ac14af86512600d263c35854f88a9d3a91'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
