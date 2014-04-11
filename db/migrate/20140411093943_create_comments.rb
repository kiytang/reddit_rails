class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :link_id
      t.string  :url
      t.text    :message

      t.timestamps
    end
  end
end
