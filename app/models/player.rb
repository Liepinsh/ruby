class Player < ApplicationRecord
    belongs_to :team
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "must consist of letters only"}, presence: true
    validates :number, length: {maximum: 2}, numericality: { only_integer: true, message: "is empty"}
    validate :numbers
    validates :position, presence: true, uniqueness: true, length: {maximum: 2}
    validates :club, format: { with: /\A[a-zA-Z]+\z/, message: "must consist of letters only"}, presence: true

    def numbers
        if number.blank? == false && number < 0
            errors.add(:number, "must be greater than or equal to 0")
        end
    end


    # validate :cls
    # def cls
    #     if club.blank? == true
    #         errors.add(:club, "empty")
    #     elsif club.with == /\A[a-zA-Z]+\z/
    #         errors.add(:club, "other")
    #     end
    # end
end
