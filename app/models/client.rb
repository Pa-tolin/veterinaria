class Client < ApplicationRecord
    has_many :pets, dependent: :destroy

    def count_pets
        self.pets.count 
    end
end
