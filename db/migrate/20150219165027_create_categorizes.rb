class CreateCategorizes < ActiveRecord::Migration
  def change
    create_table :categorizes do |t|
      t.references :category, index: true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :categorizes, :categories
    add_foreign_key :categorizes, :products
  end
end
