Todo.destroy_all
Item.destroy_all
=begin5.times do
    Todo.create({
        title: Faker::Job.title,
        username: Faker::Book.author
    })
   
end
20.times do
    Item.create({
        name: Faker::Job.key_skill,
        done: false,
        todo_id: rand(1..5)
    })
end
=end 
