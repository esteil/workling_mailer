class MailerWorker < Workling::Base
  def deliver_mail(options)
    Object.const_get(options[:class]).deliver(YAML::load(options[:mail]))
  end
end