namespace :fetch do
    desc "Fetch dog breeds from Dog API"
    task dog_breeds: :environment do
      FetchDogBreeds.call
    end
  end