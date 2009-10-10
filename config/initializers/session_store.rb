# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gabesstudio_session',
  :secret      => 'fb050eb864381eb5e280961ade612a62bc8a1b0da42af1ab62beaa03d5d5541fe1a8bd25a826e1df77a441419fc1d95ba2bd607ca898a3ff2ccf919f22d6ae2f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
