class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.belongs_to :city, index: true
      t.string :name
      t.string :species

      t.timestamps
    end
  end
end
