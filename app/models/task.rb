class Task < ApplicationRecord

    validates :name, presence:true
    validates :desc, presence:false
    validates :due_date, presence:true
    validates :priority, presence:false
    
    #validate :deadline_cannot_be_in_the_past
    
    #def deadline_cannot_be_in_the_past
    #    errors.add(:due_date, "can't be in the past") if
    #    due_date < Date.today
    #end

end
