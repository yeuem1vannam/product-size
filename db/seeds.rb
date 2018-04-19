# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w{XS S M L XL XXL 23 23.5 24 24.5}.each do |size_name|
  puts "Creating Size #{size_name}"
  Size.where(name: size_name).first_or_create
end