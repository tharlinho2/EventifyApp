class CreateTableNotificationData < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.string :endpoint
      t.string :p256dh_key
      t.string :auth_key

      t.timestamps
    end
  end
end
