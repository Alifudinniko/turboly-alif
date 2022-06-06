# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
    [
        {email: 'alif@gmail.com', password:'rahasia', password_confirmation:'rahasia', username:'alifudinniko'},
        {email: 'niko@gmail.com', password:'rahasia', password_confirmation:'rahasia', username:'niko'},
    
    ]) 
priority = Priority.create(
        [
            {id:1,name: "high"},
            {id:2,name: "low"},
            {id:3,name: "medium"},
            {id:4,name: "-"}
        ]
    )
task = Task.create(
    [
        {name: "Task1", desc: "Tugas pemrograman algoritma", due_date:'30/5/2022', priority_id: 1, is_done: false, user_id: 1},
        {name: "Task2", desc: "Tugas pemrograman statistika", due_date:'20/5/2022', priority_id: 2, is_done: true, user_id: 1},
        {name: "Task3", desc: "Tugas pemrograman oop", due_date:'20/5/2022', priority_id: 3, is_done: true, user_id: 1}
            
    ])

