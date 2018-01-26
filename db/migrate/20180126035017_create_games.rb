class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :account
      t.text :keywords
      t.string :eventname
      t.boolean :default_flg

      t.timestamps
    end
  end
end
