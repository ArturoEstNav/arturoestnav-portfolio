require "open-uri"
puts "Clearing database"

Project.destroy_all
ImageTag.destroy_all

puts "Creating Remote Scanner project"

remote_scanner = Project.new(
  name: "Remote scanner",
  description: "A job aggregator created to aid developers find remote employment options quickly
and gather all desirable postings in a single place.",
  url: "https://www.remotescanner.work/",
  used_technologies: 'Ruby on Rails, Sass, HTML 5, JavaScript, Stimulus JS, PostgreSQL, Heroku and Github'
)
remote_scanner.save

puts "Creating Bugtracker project"

bugtracker = Project.new(
  name: "Versatile Bugtracker (Beta)",
  description: "Lightweight, easy to use online bugtracker for small businesses.",
  url: "https://versatile-bugtracker.herokuapp.com/",
  used_technologies: "Ruby on Rails, Sass, HTML 5, JavaScript, Stimulus JS, PostgreSQL, Heroku and Github"
)
bugtracker.save

puts "Creating Clarify project"

clarify = Project.new(
  name: "Clarify",
  description: "An application developed with the intention of connecting wellbeing professionals with patients
through plans facilitating the track of individual progress and result comparison.",
  url: "https://clarify-portfolio.herokuapp.com/",
  used_technologies: 'Ruby on Rails, Sass, HTML 5, JavaScript, PostgreSQL, Heroku and Github'
)
clarify.save

puts 'Creating image tags'

ImageTag.create(tag: 'bugtracker-1_loiirn')
ImageTag.create(tag: 'remote-scanner-1_o4w8kr')
ImageTag.create(tag: 'clarify-1_f8mobf')

puts 'Creting image tags associations'

ProjectImageTag.create(project: Project.find_by(name: 'Versatile Bugtracker (Beta)'), image_tag: ImageTag.find_by(tag: 'bugtracker-1_isjeca'))
ProjectImageTag.create(project: Project.find_by(name: 'Remote scanner'), image_tag: ImageTag.find_by(tag: 'remote-scanner-1_o4w8kr'))
ProjectImageTag.create(project: Project.find_by(name: 'Clarify'), image_tag: ImageTag.find_by(tag: 'clarify-1_f8mobf'))
