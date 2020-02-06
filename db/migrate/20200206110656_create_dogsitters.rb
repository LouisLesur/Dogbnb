class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.belongs_to :city, index: true
      t.string :name

      t.timestamps
    end
  end
end
