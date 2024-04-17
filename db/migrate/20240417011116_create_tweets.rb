class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
