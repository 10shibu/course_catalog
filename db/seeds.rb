# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

#@course_subject_hash = Hash.new
JSON.parse(open("#{Rails.root}/db/course.json").read).each do |a|
  #puts a['code']
  Course.create(name: a['name'], code: a['code'])
  #c = Course.create(name: a['name'])
  #subject_list = a['subjects']['id']
  #course_subject_hash[c.id].push(a['subjects'].get('id'))
end

JSON.parse(open("#{Rails.root}/db/subject.json").read).each do |b|
  Subject.create!(ident: b['id'], name: b['name'] )
end

JSON.parse(open("#{Rails.root}/db/instructor.json").read).each do |c|
  Instructor.create!(ident: c['id'], last: c['last'], first: c['first'], email: c['email'])
end
