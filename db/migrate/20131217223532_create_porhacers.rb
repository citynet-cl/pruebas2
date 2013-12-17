class CreatePorhacers < ActiveRecord::Migration
  def change
    create_table :porhacers do |t|
      t.string :titulo
      t.boolean :hecho

      t.timestamps
    end
  end
end
