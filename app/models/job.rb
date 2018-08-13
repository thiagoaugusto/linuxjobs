class Job < ApplicationRecord
    validates :company, :title, :location, :description, :skills, :email, presence: true
    validates :email, format: { with: /\A[a-z]([\.\-\+]?\w+)+@[a-z]([\.\-]?\w+){2,}\Z/ }
end