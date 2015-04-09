module ProductsHelper
    def time_left(end_time)
        end_time = DateTime.parse(end_time)
        now = DateTime.now
        tl = (end_time - now).to_i # tl for Time Left
        if tl >= 2
            return "#{tl} days"
        end
    end
end
