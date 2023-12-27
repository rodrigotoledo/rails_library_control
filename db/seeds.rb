20.times do
  rand(10).times do
    Book.create(title: Faker::Book.title)
  end

  rand(10).times do
    Book.create(title: Faker::Book.title, finished: true)
  end
end