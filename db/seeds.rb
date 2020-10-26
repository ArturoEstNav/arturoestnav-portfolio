require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Clearing database"
Project.destroy_all

puts "Creating Clarify project"
clarify = Project.new(
  name: "Clarify",
  description: "wake up",
  url: "https://clarify-gucciferx.herokuapp.com/")

clarify.save

puts "Creating Remote Scanner project"
remote_scanner = Project.new(
  name: "Remote scanner",
  description: "wake up now",
  url: "https://www.remotescanner.work/")

remote_scanner.save
