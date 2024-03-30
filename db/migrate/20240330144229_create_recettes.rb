class CreateRecettes < ActiveRecord::Migration[7.1]
  def change
    create_table :recettes do |t|
      t.string :name

      t.timestamps
    end
  end
end
