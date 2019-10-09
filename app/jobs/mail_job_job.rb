class MailJobJob < ApplicationJob
  queue_as :default

  def perform(*args)
    
    VoteMailer.vote_notify('tsejen.tw@gmail.com').deliver
  end
end
