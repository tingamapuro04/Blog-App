class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :AuthorId, null: false, foreign_key: true
      t.references :PostId, null: false, foreign_key: true
      t.text :Text

      t.timestamps
    end
  end
end
