module MoodHelper

	def checkedMoodToday?
		if current_user && current_user.moods.count > 0
			current_user.moods.last.created_at > Time.now-18.hours
		else
			false
		end
	end

end
