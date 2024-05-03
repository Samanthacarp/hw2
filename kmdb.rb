# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

Movie.destroy_all
Role.destroy_all
Studio.destroy_all
Actor.destroy_all

puts "there are #{Movie.all.count} movies" 

new_movie = Movie.new
p new_movie
new_movie ["title"] = "Batman Begins"
new_movie ["year released"] = "2005"
new_movie ["rated"] = "PG=13"
new_movie ["studio_id"] = "Warner Bros."
p new_movie 
new_movie.save

puts "there are #{Movie.all.count} movies" 

theDarkKnight = Movie.new
p theDarkKnight 
theDarkKnight ["title"] = "The Dark Knight"
theDarkKnight["year released"] = "2008"
theDarkKnight ["rated"] = "PG-13"
theDarkKnight ["studio_id"] = "Warner Bros."
p theDarkKnight
theDarkKnight.save

puts "there are #{Movie.all.count} movies" 

darkknightrises = Movie.new
p darkknightrises
darkknightrises ["title"] = "Dark Knight Rises"
darkknightrises ["year released"] = "2013"
darkknightrises ["rated"] = "PG-13"
darkknightrises ["studio_id"] = "Warner Bros."
p darkknightrises
darkknightrises.save

puts "there are #{Movie.all.count} movies" 

puts "there are #{Role.all.count} roles" 

brucewayne = Role.new
p brucewayne
brucewayne ["movie_id"] =  "1"
brucewayne ["actor_id"] = "1"
brucewayne ["character_name"] = "Bruce Wayne"
p brucewayne
brucewayne.save

puts "there are #{Role.all.count} roles" 

puts "there are #{Role.all.count} roles" 

alfred = Role.new
p alfred
alfred ["movie_id"] =  "1"
alfred ["actor_id"] = "2"
alfred ["character_name"] = "alfred"
p alfred
alfred.save


puts "there are #{Role.all.count} roles" 

ragul = Role.new
p ragul
ragul ["movie_id"] =  "1"
ragul ["actor_id"] = "3"
ragul ["character_name"] = "Ra's Al Ghul"
p ragul
ragul.save

puts "there are #{Role.all.count} roles" 

puts "there are #{Role.all.count} roles" 

rachel = Role.new
p rachel
rachel ["movie_id"] =  "1"
rachel ["actor_id"] = "4"
rachel ["character_name"] = "Rachel Dawes"
p rachel
rachel.save

puts "there are #{Role.all.count} roles" 

puts "there are #{Role.all.count} roles" 

comissioner = Role.new
p comissioner
comissioner ["movie_id"] =  "1"
comissioner ["actor_id"] = "1"
comissioner ["character_name"] = "Comissioner Gordon"
p comissioner
comissioner.save

puts "there are #{Role.all.count} roles" 

puts "there are #{Studio.all.count} studios" 

warner= Studio.new
p warner
warner ["name"] =  "Warner Bros"
p warner
warner.save

puts "there are #{Studio.all.count} studios" 

puts "there are #{Actor.all.count} actors" 

christian= Actor.new
p christian 
christian ["name"] =  "Christian Bale"
p christian
christian.save

puts "there are #{Actor.all.count} actors" 

puts "there are #{Actor.all.count} actors" 

michael= Actor.new
p michael 
michael ["name"] =  "Michael Caine"
p michael
michael.save

puts "there are #{Actor.all.count} actors"

puts "there are #{Actor.all.count} actors" 

liam= Actor.new
p liam 
liam ["name"] =  "Liam Neeson"
p liam
liam.save

puts "there are #{Actor.all.count} actors"

puts "there are #{Actor.all.count} actors" 

katie= Actor.new
p katie 
katie ["name"] =  "Katie Holmes"
p katie
katie.save

puts "there are #{Actor.all.count} actors"

puts "there are #{Actor.all.count} actors" 

gary= Actor.new
p gary 
gary ["name"] =  "Gary Oldman"
p gary
gary.save

puts "there are #{Actor.all.count} actors"