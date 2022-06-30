class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.date :concert_date
      t.string :audience
      t.string :group_type
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
