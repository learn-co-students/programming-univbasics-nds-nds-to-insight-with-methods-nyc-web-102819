require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nds_index = 0
  while nds_index < nds.length do
    dir_name = nds[nds_index][:name]
    result[dir_name] = gross_for_director(nds[nds_index])
    nds_index += 1 
  end
  
  # pp result
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  movies = director_data[:movies]
  movie_index = 0
  total_profit = 0 
  while movie_index < movies.length do
    total_profit += movies[movie_index][:worldwide_gross]
    movie_index += 1 
  end
  
  # pp total_profit
  total_profit
end
