class CreateChannelProfiles < ActiveRecord::Migration[4.2]
  def change
    create_table :channel_profiles do |t|
      t.string :name, null: false
      t.string :description
      t.string :permalink, index: { unique: true }

      t.timestamps

    end
  end
end
