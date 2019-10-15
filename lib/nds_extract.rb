require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nds.length.times { |i|
    result[nds[i][:name]] = gross_for_director(nds[i])
  }
  result
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0
  director_data[:movies].length.times { |i|
    total_gross += director_data[:movies][i][:worldwide_gross]
  }
  total_gross
end
