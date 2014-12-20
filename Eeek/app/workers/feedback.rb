class Feedback
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { minutely }

  def feed_stuff_back
    p "hello"
  end
end