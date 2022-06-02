class CreatePetHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_histories do |t|
      t.float :weight
      t.float :height
      t.text :description

      t.timestamps
    end
  end
end
