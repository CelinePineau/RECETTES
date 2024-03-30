class AddColumnToRecettes < ActiveRecord::Migration[7.1]
  def change
    add_column :recettes, :descrition, :string
  end
end
