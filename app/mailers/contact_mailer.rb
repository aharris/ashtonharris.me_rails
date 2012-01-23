class ContactMailer < ActionMailer::Base
  default :to => "ashtonharris.me@gmail.com"
  
  def contact(options)
    options[:subject]  = "#{options[:subject]} from #{options[:name]}"
    options[:from]     = options[:email]
    options[:reply_to] = options[:email]
    mail(options)
  end
end