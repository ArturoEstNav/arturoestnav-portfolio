require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Clearing database"
ProjectTechnology.destroy_all
Project.destroy_all
Technology.destroy_all

technologies = ['Javascript', 'Postgresql', 'HTML 5', 'Ruby on Rails', 'Heroku',
                'Sass', 'Git', 'Stimulus JS', 'Bootstrap']
technologies.each { |technology| Technology.create(name: technology) }

puts "Creating Bugtracker project"
bugtracker = Project.new(
  name: "Versatile Bugtracker (Beta)",
  description: "Lightweight, easy to use online bugtracker for small businesses.",
  url: "https://versatile-bugtracker.herokuapp.com/")

bugtracker.save

puts "Creating Remote Scanner project"
remote_scanner = Project.new(
  name: "Remote scanner",
  description: "A job aggregator created to aid developers find remote employment options quickly
and gather all desirable postings in a single place.",
  url: "https://www.remotescanner.work/")

remote_scanner.save

puts "Creating Clarify project"
clarify = Project.new(
  name: "Clarify",
  description: "An application developed with the intention of connecting wellbeing professionals with patients
through plans facilitating the track of individual progress and result comparison.",
  url: "https://clarify-portfolio.herokuapp.com/")

clarify.save

# Technology.all.each do |technology|

# end

