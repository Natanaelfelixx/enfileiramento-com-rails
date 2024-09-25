class AccountMailer < ApplicationMailer
  def deactivate_account
    @first_name = params[:first_name]
    @title = "We're Sorry to See You Go! Join Us Again?"
    @change = "Deactivated"
    mail(
      to: params[:email],
      from: 'email for sender',
      subject: "We're Sorry to See You Go! Join Us Again?"
    ) do |format|
      format.html { render 'deactivate_account_mailer' }
    end

    # Schedule follow-up email 1 day later
    SendFollowUpEmailJob.set(wait: 1.day).perform_later(params[:email], params[:first_name])
  end

  def follow_up_email(email, name)
    @first_name = name
    mail(
      to: email,
      from: 'sender email',
      subject: "We Miss You at Nami"
    ) do |format|
      format.html { render 'follow_up_email' }
    end
  end
end