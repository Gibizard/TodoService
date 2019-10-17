class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :text
      t.boolean :isCompleted, :default => false;
      t.references :project

      t.timestamps
    end
  end
end
