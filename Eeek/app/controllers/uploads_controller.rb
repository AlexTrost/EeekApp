class UploadsController < ApplicationController
  

  def show
    # @attachment = DataFile.find(params[:id])
    # send_data @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
  end

   def create
    	"itworked" * 100
    return if params[:attachment].blank?

    @attachment = DataFile.new
    @attachment.uploaded_file(data_file_params)

    if @attachment.save
        flash[:notice] = "Thank you for your submission..."
			redirect_to controller: 'dashboard', action: 'index'
        
    else
        flash[:error] = "There was a problem submitting your attachment."
			redirect_to controller: 'dashboard', action: 'index'
    
    end
  end

  private 

  def data_file_params
    params.require(:data_file).permit(:file_name, :content_type, :data)
  end


end