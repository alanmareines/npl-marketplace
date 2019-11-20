# Preview all emails at http://localhost:3000/rails/mailers/npl_mailer
class NplMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/npl_mailer/npl_created
  def npl_created
    NplMailer.npl_created
  end

end
