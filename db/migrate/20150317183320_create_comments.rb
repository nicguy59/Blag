class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      # t.references :post, null: false
      t.belongs_to :post, null: false  
      #t.integer :post_id

      t.string :name, null: false, default: 'Anonymous Coward'
      t.text :body

      t.timestamps null: false
    end
  end
end
