class Team < ApplicationRecord
    has_many :player
    def full_name
        "#{code} : #{title}"
    end
end
