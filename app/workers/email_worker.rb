class EmailWorker
  include Sidekiq::Worker

  def perform(*args)
    ArticleMailer.new_article
  end
end
