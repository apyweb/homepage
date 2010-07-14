# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_apyweb_session',
  :secret      => '31b47148ff0f8d87a34935c3b78788d5a3ede3efa3db74a56eec9a06e0f5b44adcde5525d5a183e98fad1a4fca435f3833ed5f65c6543dbba70afb23c482ee27'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
