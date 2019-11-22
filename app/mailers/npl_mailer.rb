class NplMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.npl_mailer.npl_created.subject
  #
  def npl_created(npl)
    @npl = npl
    mail(
      to: @npl.user.email,
      subject: 'NPL created'
      )
  end
end
