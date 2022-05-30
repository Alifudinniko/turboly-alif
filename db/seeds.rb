# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

task = Task.create(name: "Task1", desc: "Tugas pemrograman algoritma", due_date:'30/5/2022', priority: "low", is_active: true , is_done: false)
task2 = Task.create(name: "Task2", desc: "Tugas pemrograman statistika", due_date:'20/5/2022', priority: "medium", is_active: true , is_done: true)
task3 = Task.create(name: "Task3", desc: "Tugas pemrograman OOP", due_date:'22/5/2022', priority: "high", is_active: false, is_done: true)
