class UploadsController < ApplicationController
  protect_from_forgery except: :create
  before_filter :authenticate_user!
  
  # include 'Feedback'
  # HardWorker.perform_async('bob', 5)

  def new
    #  @upload = Upload.new
    respond_to do |format|
        format.js { render :render_new_upload_form }
    end
  end

  def create
    if (params[:upload][:text] == nil || params[:upload][:text] == "" ) && (params[:upload][:attachment] == nil)
      return "Make sure to write or select something"
      # flash[:error] = "Make sure to write or upload something before you hit save!"
    else
      params[:user_id] = current_user.id
      @upload = Upload.new(upload_params)
      @upload.user_id = current_user.id
      respond_to do |format|
        if @upload.save
          format.js { render :'upload_confirm', locals: { upload: @upload } }
          format.html { redirect_to :back }
          # format.html { render :'uploads/index' }
          # format.html {redirect_to feed_index_path, notice: "The upload has been uploaded."}
        else
          format.js { render :upload_fail }
          return "Upload failed"
        end
      end
    end
  end

  # def trigger
  #   uploads = Upload.where(user_id: current_user.id)
  #   num = rand(1..uploads.length)
  #   @upload = uploads[num]
  #   current_id = current_user.id
  #   HardWorker.perform_async(current_id)
  #   respond_to do |format|
  #       format.js { render :render_feed }
  #       format.html {redirect_to feed_index_path}
  #   end
  # end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    respond_to do |format|
      format.js { render :'upload_thumbnail_delete', locals: { id: params[:id] } }
      format.html {redirect_to uploads_path, notice:  "The upload has been deleted."}
    end
  end

private
  def upload_params
    params.require(:upload).permit(:attachment, :text, :user_id)
  end
end
