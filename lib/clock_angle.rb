require ("pry")

class String
  define_method (:clock_angle) do
    time = self.split(":")
    if time[0].!=("12")
    hour_angle = (time[0].to_f()).*(30)
    else
    hour_angle = 0
    end
    minute_angle = (time[1].to_f()).*(6)
    angle = (hour_angle.-(minute_angle)).abs()
    angle
  end
end
