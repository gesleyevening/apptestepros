require_relative 'boot'

#require File.expand_path('../boot', __FILE__)
 
# Pick the frameworks you want: 
#require   "active_model/railtie" 
#require   "active_record/railtie" 
#require   "action_controller/railtie" 
#require   "action_mailer/railtie" 
#require   "action_view/railtie" 
#require   "sprockets/railtie" 
# require "rails/test_unit/railtie" 


require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AppProsa
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    #config.load_defaults 5.2
    
    #config.generators do |g|
    #  g.test_framework:rspec, 
    #    fixtures:false, 
     #   view_specs:false, 
    #    helper_specs:false, 
    #    routing_specs:false, 
    #    request_specs:false, 
    #    controller_specs:true
    #end
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
