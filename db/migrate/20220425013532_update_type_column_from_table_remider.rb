class UpdateTypeColumnFromTableRemider < ActiveRecord::Migration[6.1]
  def change
    change_column :reminders, :reminder_at, :datetime
  end
end
