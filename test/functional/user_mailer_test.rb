require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "subscribeDemand" do
    musician = musicians(:one)
    mail = UserMailer.subscribeDemand(musician)
    assert_equal "Confirmation de votre inscription sur leboncouac.fr", mail.subject
    assert_equal [musician.email], mail.to
    assert_equal ["no-reply@leboncouac.fr"], mail.from
    assert_match "Merci de votre inscription!", mail.body.encoded
  end

end
