require 'test_helper'

class InscriptionMailerTest < ActionMailer::TestCase
  test "subscribeDemand" do
    musician = musicians(:one)
    mail = InscriptionMailer.subscribeDemand(musician)
    assert_equal "Confirmation de votre inscription sur leboncouac.fr", mail.subject
    assert_equal [musician.email], mail.to
    assert_equal ["no-reply@leboncouac.fr"], mail.from
    assert_match "Merci pour ton inscription!", mail.body.encoded
  end

end
