class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :time_value
      t.string :time_unit
      t.date :reminder_at

      t.timestamps
    end
  end
end
