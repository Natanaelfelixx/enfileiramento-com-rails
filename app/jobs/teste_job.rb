class TesteJob < ApplicationJob
  queue_as :default

  def perform(email, name)
    AccountMailer.follow_up_email(email, name).deliver_now
  end
end
