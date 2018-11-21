Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :minitest

    # Or, choose all of the above:
    with.library :rails
  end
end