class MoodController < ApplicationController

	def create
    @mood = Mood.new(scale: params[:scale], user_id: current_user.id)
    respond_to do |format|
        if @mood.save
          format.js { render :'mood_confirm', locals: { mood: @mood } }
          format.html { redirect_to :back }
        else
          format.js { render :mood_fail }
          return "Mood save failed"
        end
    end
  end


  private
  def mood_params
    params.require(:mood).permit(:scale, :user_id)
  end


end