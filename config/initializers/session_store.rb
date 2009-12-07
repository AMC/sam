# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_login_session',
  :secret      => '5216c8561d4ac7ac76c269d01c4747aa5cc6209bef7382904cb7fd7b3f8375df0ae9981d03d973024178afecfeafa3b4ea9a75a8d9fc7a629bb927c13502e02e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
