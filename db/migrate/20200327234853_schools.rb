class Schools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools, id: false do |t|
      t.primary_key :CO_ENTIDADE
      t.string :NO_ENTIDADE

      t.timestamps
    end
  end
end
