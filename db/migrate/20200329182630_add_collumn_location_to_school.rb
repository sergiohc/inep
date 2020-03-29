class AddCollumnLocationToSchool < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :city, :string
    add_column :schools, :uf, :string
  end
end
