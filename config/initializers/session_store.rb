# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_learn_session',
  :secret      => 'edb81eda38c266f3f413d2f7b0e7ada03cc7f3f268283906952ed7dc9f99c1fd6954374cb4cbd65f4b84acba9472da3931eb4e37390930dbad25668c796428a5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
