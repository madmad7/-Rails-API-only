require 'net/http'
require 'json'

class FetchDogBreeds
  DOG_API_URL = 'https://api.thedogapi.com/v1/breeds'.freeze

  def self.call
    response = Net::HTTP.get(URI(DOG_API_URL))
    breeds = JSON.parse(response)
    breeds.each do |breed_data|
      Breed.find_or_create_by(name: breed_data['name'])
    end
  end
end
