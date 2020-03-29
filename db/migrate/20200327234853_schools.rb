class Schools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools, id: false do |t|
      t.primary_key :id
      t.string :name

      t.timestamps
    end
  end
end
