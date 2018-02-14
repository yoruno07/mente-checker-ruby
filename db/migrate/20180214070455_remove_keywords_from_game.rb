class RemoveKeywordsFromGame < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :keywords, :text
  end
end
