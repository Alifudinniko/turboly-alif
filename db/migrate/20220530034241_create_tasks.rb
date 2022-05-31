class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :desc
      t.date :due_date
      t.string :priority
      t.boolean :is_done
      t.integer :created_by

      t.timestamps
    end
  end
end
