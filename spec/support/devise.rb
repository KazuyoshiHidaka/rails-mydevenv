module DeviseCustomMacros
  def login(user: create(:user))
    sign_in user
  end
end

RSpec.configure do |config|
  config.include Devise::Test::IntegrationHelpers
  config.include DeviseCustomMacros
end
