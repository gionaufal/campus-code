class AddAuthorToCards < ActiveRecord::Migration
  def change
    add_column :cards, :author, :string
  end
end
