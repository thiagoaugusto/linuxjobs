class Job < ApplicationRecord
    validates :company, :title, :location, :description, :skills, presence: true
end