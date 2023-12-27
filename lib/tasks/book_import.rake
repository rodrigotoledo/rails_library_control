namespace :book do
  desc "Import books"
  task :import => :environment do
    require 'faker'

    20.times do
      rand(10).times do
        Book.create(title: Faker::Book.title)
      end

      rand(10).times do
        Book.create(title: Faker::Book.title, finished: true)
      end
    end

    puts "Books imported successfully!"
  end

  desc "Read some books"
  task :read => :environment do
    Book.where(finished: false).limit(rand(10)).each do |book|
      book.update(finished: true)
      sleep(2)
    end
  end
end