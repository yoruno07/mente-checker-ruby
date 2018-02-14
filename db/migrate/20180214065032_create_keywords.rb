class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.references :game, foreign_key: true
      t.string :word

      t.timestamps
    end
  end
end
