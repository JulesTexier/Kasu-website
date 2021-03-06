class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.belongs_to :library_item, index: true

      t.timestamps
    end
  end
end
