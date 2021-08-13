class CreatePublisheds < ActiveRecord::Migration[5.2]
  def change
    create_table :publisheds do |t|
      t.integer :author_id
      t.integer :book_id

      t.timestamps
    end
  end
end
