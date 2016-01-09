class AddActiveToMeme < ActiveRecord::Migration
  def change
    add_column :memes, :active, :boolean
    Meme.update_all(active:false)
  end
end
