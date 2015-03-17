class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body
      t.boolean :published, default: false

      t.timestamps null: false
    end
  end
end


=begin
    creat_table('post') #each of these is the same 
    create_table(:post) #this creates a table with the symbol ":post"  


  create_table :posts do |t|   #'t' is a variable that represents the table
    
    t.string(:title, {null: false, default: 'No Title'})
    t.string('title', {})
    t.string 'title', {}
    t.string 'title'
    t.string :title 
  
    t.timestamps null: false #the name is automatic, and the parameter is set
                             #  to null, because rails will timestamp everything
    t.timestamps( , {null: false})

=end