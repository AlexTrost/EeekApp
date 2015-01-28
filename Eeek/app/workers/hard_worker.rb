class HardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { minutely }
  
  def perform(user_id)
    uploads = Upload.where(user_id: user_id)
    num = rand(0..uploads.length)
    @upload = uploads[num]
    # p "Alex!" * 100
    p uploads.length.to_s * 100
    redirect_to dashboard_path
    # respond_to do |format|
    #     format.js { render :render_feed }
    #     format.html {redirect_to dashboard_index_path}
    # end
  end
end 