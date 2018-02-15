class CreateCheckers < ActiveRecord::Migration[5.1]
  def change
    create_table :checkers do |t|
      t.text :content
      t.references :game, foreign_key: true
      t.bigint :tweet_id
      t.datetime :tweeted_at

      t.timestamps
    end
    add_index :checkers, :tweet_id, unique: true
  end
end
