class CreateSights < ActiveRecord::Migration[6.0]
  def change
    create_table :sights do |t|
      t.references :place
      t.string :activity_type, null: false

      t.timestamps
    end
  end
end
