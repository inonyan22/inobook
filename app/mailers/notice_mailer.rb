class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog
    @greeting = "Hi"

    mail to: "inoue.yousuke.1991@gmail.com"
    subject: ''
  end
end
