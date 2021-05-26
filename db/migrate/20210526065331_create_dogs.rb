class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :desc
      t.string :img_url
      t.belongs_to :rescue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
