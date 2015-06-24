require 'forcedotcom'

# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
OmniAuth.config.full_host = 'https://localhost:3000'

module OmniAuth
  module Strategies
    #tell omniauth to load our strategy
    autoload :Forcedotcom, 'lib/forcedotcom'
  end
end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :forcedotcom, '3MVG9Rd3qC6oMalWCDutj40Wowe8xp8.2wm3F2BhTULvSQnk9bIauQGWUmfN2EdeYdEh_bSh0OpVdpz7b0gsA', '1583946690744156955'
end
