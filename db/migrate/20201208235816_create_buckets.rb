class CreateBuckets < ActiveRecord::Migration[6.0]
  def change
    create_table :buckets do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
