class AddUserReferenceToWikis < ActiveRecord::Migration[5.2]
  def change
    add_reference :wikis, :user, foreign_key: true
  end
end
