require 'rest-client'
require 'json'
require 'pry'

def film_api_helper(url)
response_string=RestClient.get url
response_hash=JSON.parse(response_string)
end

def get_character_movies_from_api(character_name)
  result = []
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
 
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`

  #response_hash["results"][0]["films"]

  response_hash["results"].each do |character_hash|
    if character_hash["name"].downcase == character_name.downcase
      character_hash["film"]
    else
      nil
    end
  end
end



<<<<<<< HEAD

  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
   
=======
  films = response_hash["results"][0]["films"]
  films.each do |film_url|
    result << film_api_helper(film_url) 
  end
  
  return result

  # iterate over the response hash to find the collection of `films` for the given
  #   `character`

>>>>>>> 3e5c676b817f77775e91caf5647a3ea0109c0bac
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  
  # return value of this method should be collection of info about each film.

  #  i.e. an array of hashes in which each hash reps a given film
   

  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
<<<<<<< HEAD
 


def print_movies(films)
 # some iteration magic and puts out the movies in a nice list
  films.each do |film|
    response_film = RestClient.get(film)
    response_film_hash = JSON.parse(response_film)
    puts "Title: #{response_film_hash["title"]} Description: #{response_film_hash[opening-crawl]}"
  end
=======

end

def print_movies(films)
  films.each do |film_hash|
    puts "--"*10
    puts "Title:"
   
    puts film_hash["title"]
    puts ""
    puts "Description:"
    puts film_hash["opening_crawl"]
    puts ""
  end

>>>>>>> 3e5c676b817f77775e91caf5647a3ea0109c0bac
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

<<<<<<< HEAD
 

#get_character_movies_from_api("samip")
=======
>>>>>>> 3e5c676b817f77775e91caf5647a3ea0109c0bac

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?

<<<<<<< HEAD
#def film_api_helper(url)

#response_string=RestClient.get url
#response_hash=JSON.parse(response_string)
#end

  #film_api_helper("https://www.swapi.co/api/films/2/")
  #[{}]
=======



# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
>>>>>>> 3e5c676b817f77775e91caf5647a3ea0109c0bac
