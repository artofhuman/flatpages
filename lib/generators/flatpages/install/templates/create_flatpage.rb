class CreateFlatpage < ActiveRecord::Migration
  def change
    create_table :flatpages do |t|
      t.string :name, null: false
      t.string :path, null: false
      t.text :text
    end
  end
end
