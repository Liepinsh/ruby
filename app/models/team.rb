class Team < ApplicationRecord
    validates :title, format: { with: /\A[a-zA-Z]+\z/, message: "must consist of letters only"}, presence: true
    validates :code, format: { with: /\A[a-zA-Z]+\z/, message: "must consist of letters only"}, presence: true

    def full_name
        "#{code} : #{title}"
    end
end
