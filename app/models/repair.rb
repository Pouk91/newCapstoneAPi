class Repair < ApplicationRecord
  belongs_to :user
  validates :year, :make, :model, :repairname, :repaircost, presence: true
end
