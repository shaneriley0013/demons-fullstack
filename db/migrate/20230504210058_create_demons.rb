class CreateDemons < ActiveRecord::Migration[7.0]
  def change
    create_table :demons do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
