class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string :user
      t.string :name
      t.text :mood

      t.timestamps
    end
  end
end
