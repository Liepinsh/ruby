class Player < ApplicationRecord
    belongs_to :team
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "must consist of letters only"}, presence: true
    validates :number, uniqueness: true, length: {maximum: 2}, numericality: { only_integer: true, :greater_than_or_equal_to => 0}, presence: true
    validates :position, presence: true, uniqueness: true, length: {maximum: 2}
end
