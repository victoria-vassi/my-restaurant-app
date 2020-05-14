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
    category: 'British',
    map: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2482.9661877766616!2d-0.1389100489216452!3d51.51383631795395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487604d4c0e3a357%3A0xd4b0e3215603abf7!2sSocial%20Eating%20House!5e0!3m2!1sen!2sch!4v1589464747298!5m2!1sen!2sch',
    latitude: '51.5138',
    longitude: '0.1367'
  },
  {
    name: 'Dishoom',
    address: '12 Upper St. Martins Lane, London WC2H 9FB',
    phone_number: '0787317978',
    category: 'Indian',
    latitude: '51.5362',
    longitude: '0.1254',
    map: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d39726.34839454688!2d-0.1598360568014783!3d51.51510976078344!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9c3887a3670e0076!2sDishoom%20Covent%20Garden!5e0!3m2!1sen!2sch!4v1589464700211!5m2!1sen!2sch'
  },
  {
    name: 'Pizza Pilgrims',
    address: '11 Dean Street, London W1D 3RP',
    phone_number: '0787317978',
    category: 'Italian',
    latitude: '51.5362',
    longitude: '0.1254',
    map: 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9931.627143038037!2d-0.1332495!3d51.5149261!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x98667c8d5207d7d6!2sPizza%20Pilgrims!5e0!3m2!1sen!2sch!4v1589464250107!5m2!1sen!2sch'
  },
  {
    name: 'Le Pain Quotidien',
    address: 'Jubilee Place Unit 84, London E14 5NY',
    phone_number: '0787317978',
    category: 'Belgian',
    map: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9931.621462127596!2d-0.13329241732534425!3d51.514952155117875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb0f8b54808a495b4!2sLe%20Pain%20Quotidien!5e0!3m2!1sen!2sch!4v1589464612557!5m2!1sen!2sch'
  },
  {
    name: 'Sushi Samba',
    address: 'Heron Tower, London EC2N 4AY',
    phone_number: '0787317978',
    category: 'Japanese',
    map: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d39726.43246987817!2d-0.1596643637622372!3d51.51501335946794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x738e15fa9b5c362b!2sSUSHISAMBA%20Covent%20Garden!5e0!3m2!1sen!2sch!4v1589464656331!5m2!1sen!2sch'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
