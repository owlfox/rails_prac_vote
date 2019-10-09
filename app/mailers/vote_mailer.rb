class VoteMailer < ApplicationMailer
   def vote_notify(email)
    mail to: email, subject: "HIHI"
   end
end
