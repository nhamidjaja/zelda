class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :vanity_url
      t.string :destination_url

      t.timestamps null: false
    end
  end
end
