class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.date :start_Day
      t.date :End_Day
      t.text :content
      t.timestamps
    end
  end
end
