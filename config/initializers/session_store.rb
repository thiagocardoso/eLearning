# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_learning_session',
  :secret      => '2b30d10c78151c7f19c69d6f85732be57608bb6d28c00c17ce125187a02f1ec53bcb45edce426cf0b227cd323cc09f3b632e6b8161891dbfcf3b66ddc81d4dfc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
