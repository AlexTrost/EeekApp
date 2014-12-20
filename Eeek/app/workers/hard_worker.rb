# class HardWorker
#   include Sidekiq::Worker


#   # def feed_stuff_back
#   #   p "hello"
#   # end

#   def perform(name, count)
#     puts 'Doing hard work'
#   end
# end

class HardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { minutely }
  
  def perform(input)
    p input * 20
  end
end