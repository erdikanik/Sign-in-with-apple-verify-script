# Sign-in-with-apple-verify-script

Creating json web token for sign in with apple. 

You should pass result key to "client_secret" parameter as a string.

Script usage:

**sudo gem install jwt**
**ruby generator.rb**

# What you need to create this key?

> a key file: AuthKey_KEY_FILE_NAME.p8 (obtained from https://developer.apple.com/account/resources/authkeys/list)

> a bundle identifer (for clients) or service id (web platforms: https://developer.apple.com/account/resources/identifiers/list/serviceId)

> your apple team id - (You can find at membership tab)
