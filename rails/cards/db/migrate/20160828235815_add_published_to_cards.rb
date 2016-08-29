class AddPublishedToCards < ActiveRecord::Migration
  def change
    add_column :cards, :published, :boolean
  end
end
