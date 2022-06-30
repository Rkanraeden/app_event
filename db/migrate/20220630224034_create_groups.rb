class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :members
      t.date :date_debut
      t.string :conformation
      t.string :concerts
      t.string :public
      t.string :total

      t.timestamps
    end
  end
end
