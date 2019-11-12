# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

print "Store Name> "
name = gets

@store = Store.create(name: name)

@store.errors.messages.each_pair do |field, message|
  puts "#{field}: #{message.join(', ')}"
end
