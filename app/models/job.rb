class Job < ApplicationRecord
    validates :company, :title, :location, :description, :skills, :email, presence: true
    validates :email, format: { with: /\A[a-z]([\.\-\+]?\w+)+@[a-z]([\.\-]?\w+){2,}\Z/ }    

    def self.search(query)
        if query.present?
            where(['company like :query or 
                   title like :query or 
                   location like :query or 
                   description like :query or 
                   skills like :query', query: "%#{query}%"])                        
        else
            all
        end
    end
end