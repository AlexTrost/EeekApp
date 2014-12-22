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
    uploads = Upload.where(user_id: current_user.id)
    num = rand(1..uploads.length)
    @upload = uploads[num]
  end
end