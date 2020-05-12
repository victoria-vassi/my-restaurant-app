# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants_attributes = [
  {
    name: 'Social Eating House',
    address: '58 Poland St, Soho, London W1F 7NR',
    phone_number: '0787317978',
    category: 'British'
  },
  {
    name: 'Dishoom',
    address: '12 Upper St. Martins Lane, London WC2H 9FB',
    phone_number: '0787317978',
    category: 'Indian'
  },
  {
    name: 'Pizza Pilgrims',
    address: '11 Dean Street, London W1D 3RP',
    phone_number: '0787317978',
    category: 'Italian'
  },
  {
    name: 'Le Pain Quotidien',
    address: 'Jubilee Place Unit 84, London E14 5NY',
    phone_number: '0787317978',
    category: 'Belgian'
  },
  {
    name: 'Sushi Samba',
    address: 'Heron Tower, London EC2N 4AY',
    phone_number: '0787317978',
    category: 'Japanese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
