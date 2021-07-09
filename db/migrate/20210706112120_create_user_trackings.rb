class CreateUserTrackings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_trackings do |t|
      t.string :cookie
      t.string :referrer
      t.string :localReferrer
      t.string :userAgent
      t.string :fingerPrint
      t.string :url
      t.bigint :ticket_id
      t.integer :serviceId
      t.string :city
      t.string :email
      t.bigint :mobile
      t.string :flag

      t.timestamps
    end
  end
end
