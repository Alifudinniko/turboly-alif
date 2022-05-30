class Task < ApplicationRecord

    validates :name, presence:true
    validates :desc, presence:false
    validates :due_date, presence:true
    validates :priority, presence:false
    validates :is_active, presence:true
    validates :is_done, presence:true

end
