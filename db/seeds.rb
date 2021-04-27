require "open-uri"
# puts "Clearing database"
# ProjectTechnology.destroy_all
# Project.destroy_all
# Technology.destroy_all

# puts "Creating Technologies "
# technologies = ['Javascript', 'Postgresql', 'HTML 5', 'Ruby on Rails', 'Heroku',
#                 'Sass', 'Git', 'Stimulus JS']
# technologies.each { |technology| Technology.create(name: technology) }

# puts "Creating Bugtracker project"
# bugtracker = Project.new(
#   name: "Versatile Bugtracker (Beta)",
#   description: "Lightweight, easy to use online bugtracker for small businesses.",
#   url: "https://versatile-bugtracker.herokuapp.com/")
# bugtracker.save

# puts "Creating Remote Scanner project"
# remote_scanner = Project.new(
#   name: "Remote scanner",
#   description: "A job aggregator created to aid developers find remote employment options quickly
# and gather all desirable postings in a single place.",
#   url: "https://www.remotescanner.work/")
# remote_scanner.save

# puts "Creating Clarify project"
# clarify = Project.new(
#   name: "Clarify",
#   description: "An application developed with the intention of connecting wellbeing professionals with patients
# through plans facilitating the track of individual progress and result comparison.",
#   url: "https://clarify-portfolio.herokuapp.com/")
# clarify.save

# puts 'Creating project technologies'
# Technology.all.each do |technology|
#   Project.all.each do |project|
#     ProjectTechnology.create(project: project, technology: technology)
#   end
# end

# puts 'Creating image tags'
# ImageTag.create(tag: 'clarify-1_f8mobf')
# ImageTag.create(tag: 'remote-scanner-1_o4w8kr')

# puts 'Creting image tags associations'
# ProjectImageTag.create(project: Project.find_by(name: 'Clarify'), image_tag: ImageTag.find_by(tag: 'clarify-1_f8mobf'))
# ProjectImageTag.create(project: Project.find_by(name: 'Remote scanner'), image_tag: ImageTag.find_by(tag: 'remote-scanner-1_o4w8kr'))

