require 'aws-sdk'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  Aws.config.update({
      region: 'us-east-1'
                    })
end
