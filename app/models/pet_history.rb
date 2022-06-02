class PetHistory < ApplicationRecord
    belongs_to :pet

    def historial
        @historial = Pethistory.all
    end

    def pet_name
        @pet_name = Pet.find(self.pet_id).name
    end

    def owner
        @owner = Client.find(self.client_id).name
    end
end
