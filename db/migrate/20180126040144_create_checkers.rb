class CreateCheckers < ActiveRecord::Migration[5.1]
  def change
    create_table :checkers do |t|
      t.text :content
      t.references :game, foreign_key: true
      t.integer :tweet_id
      t.date :tweeted_at

      t.timestamps
    end
  end
end
