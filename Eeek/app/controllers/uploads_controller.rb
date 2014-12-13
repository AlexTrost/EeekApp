class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(upload_params)

    if @upload.save
      redirect_to uploads_path, notice: "The upload #{@upload.name} has been uploaded."
    else
      render "new"
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


# class UploadsController < ApplicationController
  

#   def show
#     # @attachment = DataFile.find(params[:id])
#     # send_data @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
#   end


#   skip_before_action :verify_authenticity_token
#    def create
#     	"itworked" * 100
#     return if params[:attachment].blank?

#     @attachment = DataFile.new
#     @attachment.uploaded_file(data_file_params)

#     if @attachment.save
#         flash[:notice] = "Thank you for your submission..."
# 			respond_to do |format|
# 	      format.js { render :datafile_confirm }
# 	    end
        
#     else
#         flash[:error] = "There was a problem submitting your attachment."
# 			redirect_to controller: 'dashboard', action: 'index'
    
#     end
#   end

#   private 

#   def data_file_params
#     params.require(:data_file).permit(:file_name, :content_type, :data)
#   end


# end