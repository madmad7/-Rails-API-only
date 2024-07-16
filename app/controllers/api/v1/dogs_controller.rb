class Api::V1::DogsController < ApplicationController
    def breeds
        render json: Breed.all
    end
end
