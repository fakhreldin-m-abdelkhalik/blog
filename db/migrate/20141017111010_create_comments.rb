class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.belongs_to :commenter, index: true
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
