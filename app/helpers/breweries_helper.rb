module BreweriesHelper
  #Checks is the brewery entered is already in table, if not added it to the table
  def add_brewery(brewery_name)
    #Finds id of the brewery, gets nil if brewery does not exist
    #does not exist, adds it and returns new ID
    if !Brewery.exists?(name: brewery_name)
      new_brewery = Brewery.create(:name => brewery_name)
      return new_brewery.id
    #does exist, just returns the ID
    else
      b = Brewery.find_by_name(brewery_name)
      return b.id
    end
  end
end
