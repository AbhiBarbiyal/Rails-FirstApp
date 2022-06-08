class AddDesc < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :plot, :text
    add_column :movies, :response, :boolean
    add_column :movies, :rating, :integer
  end
end
