RSpec.configure do |config|
  config.before(type: :system) do
    driven_by :rack_test
  end
end