class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  default to: 'to@example.com'
  default subject: 'Nice download for you'
  layout 'mailer'

  def downloads
    attachments["word.docx"] = File.read(File.join(Rails.root, 'public', 'word.docx'))
    attachments["avatar.jpg"] = File.read(File.join(Rails.root, 'public', 'avatar.jpg'))
    mail
  end
end
