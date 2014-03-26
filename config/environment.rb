# Load the Rails application.
require File.expand_path('../application', __FILE__)

Time::DATE_FORMATS[:ru_date] = "%dd.%mm.%Y"

# Initialize the Rails application.
Metrix::Application.initialize!
