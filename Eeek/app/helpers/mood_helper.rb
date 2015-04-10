module MoodHelper

	def checkedMoodToday?
		current_user.mood.last.created_at > Time.now-18.hours
	end

end
