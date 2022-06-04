class Task < ApplicationRecord

    validates :name, presence:true
    validates :desc, presence:false
    validates :due_date, presence:true
    validates :priority, presence:false
    
    def self.alphabetical
        self.all.order(:name).where(user_id: Current.user.id)
    end

    def self.date
        self.all.order(:due_date).where(user_id: Current.user.id)
    end

    has_one :priority
    belongs_to :user

    
end
