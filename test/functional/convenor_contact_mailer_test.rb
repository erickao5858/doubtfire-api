require 'test_helper'

class ConvenorContactMailerTest < ActionMailer::TestCase
  test "request_add_to_project" do
    mail = ConvenorContactMailer.request_add_to_project
    assert_equal "Request add to project", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end