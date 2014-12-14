class UploadsController < ApplicationController
  protect_from_forgery except: :index

  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(upload_params)
    respond_to do |format|
      if @upload.save
        p "ho" * 100
        format.js { render :upload_confirm }
        # session[:upload_success] = "Upload successful"
        # redirect_to dashboard_index_path, notice: "The upload #{@upload.name} has been uploaded."
      else
        format.js { render :upload_fail }
        # session[:upload_error] = @upload.errors
      end
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to uploads_path, notice:  "The upload #{@upload.name} has been deleted."
  end

private
  def upload_params
    params.require(:upload).permit(:name, :attachment)
  end
end
