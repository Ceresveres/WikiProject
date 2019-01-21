class AddTopicReferenceToPages < ActiveRecord::Migration[5.2]
  def change
    add_reference :pages, :topic, foreign_key: true
  end
end
