class CreateHasLists < ActiveRecord::Migration[6.0]
  def change
    create_table :has_lists do |t|
      t.references :article, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
