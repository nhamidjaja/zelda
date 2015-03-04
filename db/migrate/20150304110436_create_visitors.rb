class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.belongs_to :link, index: true
      t.string :ip
      t.string :user_agent

      t.timestamps null: false
    end
    add_foreign_key :visitors, :links
  end
end
