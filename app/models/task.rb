class Task < ApplicationRecord

    validates :name, presence:true
    validates :desc, presence:false
    validates :due_date, presence:true
    validates :priority, presence:false
    
    def self.alphabetical
        self.all.order(:name).where(created_by: Current.user.id)
    end

    def self.date
        self.all.order(:due_date).where(created_by: Current.user.id)
    end

    
end
