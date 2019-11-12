# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts 'Exercise 8'
puts '----------'

@employee1 = @store2.employees.create(
  first_name: 'Jeeves',
  last_name: 'Von Buren',
  hourly_rate: 40
)

puts @employee1.password
