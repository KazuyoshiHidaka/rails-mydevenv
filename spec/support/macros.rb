module CustomMacros
end

RSpec.configure do |config|
  config.include CustomMacros
  config.include ApplicationHelper, type: :system
end
