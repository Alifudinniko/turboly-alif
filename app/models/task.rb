class Task < ApplicationRecord

    validates :name, presence:true
    validates :desc, presence:false
    validates :due_date, presence:true
    validates :priority, presence:false


end
