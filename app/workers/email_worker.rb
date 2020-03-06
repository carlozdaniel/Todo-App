class EmailWorker
  include Sidekiq::Worker

  def perform(article)
    ArticleMailer.new_article(article).deliver_now  
  end
end
