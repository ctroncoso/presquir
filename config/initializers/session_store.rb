# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_presquir_session',
  :secret      => '423dcf7cf502eaae344d3bfe38f4511664d9bc86353021d23bf88fc1c4eca1eb700cd1272ed22cf0526317d59fc428f9e8689838d49e4fefacd95f3513cd3497'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
