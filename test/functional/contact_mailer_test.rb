require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "contact mail" do
    email = ContactMailer.contact(
      :subject  => "Feedback",
      :name     => "John Doe",
      :email    => "johndoe@gmail.com",
      :body     => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ).deliver
    
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal ["john@doe.com"], email.to,       "to"
    assert_equal ["johndoe@gmail.com"],    email.from,     "from"
    assert_equal ["johndoe@gmail.com"],    email.reply_to, "reply_to"
    assert_equal "Feedback from John Doe", email.subject
    assert email.body.to_s.starts_with? "Lorem ipsum"
  end
end