class CreateFlatpage < ActiveRecord::Migration
  def change
    create_table :flatpages do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :text
    end

    add_index :flatpages, :slug, unique: true
  end
end
