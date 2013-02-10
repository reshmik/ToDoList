# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_todolist_session',
  :secret      => 'eebe26831ba70a986079aecb8de922cbf038eaf0ff48bde98f9fd88f6acf442a00dcf84ba1349fbde538e3699d0697477d778f671b945f4db8dba1ca7791f929'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
