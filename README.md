rails new movie_mania --skip-bundle
cd movie_mania
bundle --local
rails s
rails g controller movies index show
rails g model Movie name plot
rails destroy model Movie
rails g model Genre name
rails g model Movie name description:text plot:text rating:decimal genre:references
bin/rake db:migrate
rails c
rails g controller genres show
rake routes
rails g migration RemoveColumnsFromMovies text
bin/rake db:migrate
