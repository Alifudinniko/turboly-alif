class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :desc
      t.date :due_date
      t.integer :priority_id
      t.integer :user_id
      t.boolean :is_done

      t.timestamps
    end
  end
end
