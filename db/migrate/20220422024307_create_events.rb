class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
