class CommentValidations < ActiveRecord::Migration
  def up
    change_column :comments, :first_name, :string, :null => false
    change_column :comments, :last_name, :string, :null => false
    change_column :comments, :email, :string, :null => false
    change_column :comments, :body, :text, :null => false
    change_column :comments, :user_id, :integer, :null => false
    change_column :comments, :project_id, :integer, :null => false

    
  end

  def down
    change_column :comments, :first_name, :string, :null => true
    change_column :comments, :last_name, :string, :null => true
    change_column :comments, :email, :string, :null => true
    change_column :comments, :body, :text, :null => true
    change_column :comments, :user_id, :integer, :null => true
    change_column :comments, :project_id, :integer, :null => true
  end
end
