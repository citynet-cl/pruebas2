class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :titulo
      t.boolean :hecho

      t.timestamps
    end
  end
end
