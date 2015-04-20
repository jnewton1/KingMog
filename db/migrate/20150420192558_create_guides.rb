class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
