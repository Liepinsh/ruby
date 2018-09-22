class Score < ApplicationRecord
    belongs_to :home_team, class_name: 'Team'
    belongs_to :guest_team, class_name: 'Team'

    def points_for_winning_team
        if winner_team == nil
            return 0;
        elsif overtime
            return 2;
        else
            return 3;
        end
    end

    def points_for_loser_team
        if overtime
            if winner_team == nil
                return 0;
            else
                return 1;
            end
        else
            return 0;
        end
    end

    def winner_team
        if home_score > guest_score
            home_team
        elsif home_score < guest_score
            guest_team
        else
            nil
        end
    end

    def loser_team
        if winner_team == home_team
            guest_team
        elsif winner_team == guest_team
            home_team
        else
            nil
        end
    end
end
