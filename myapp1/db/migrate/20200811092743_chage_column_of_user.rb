class ChageColumnOfUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users ,:gender , :boolean
  end
end
