class AddSchemaRestraints < ActiveRecord::Migration
  def up
  	change_column :users, :username, :string, :null=>false
  	change_column :users, :password, :string, :null=>false
  	change_column :users, :email, :string, :null=>false
  	change_column :users, :first_name, :string, :null=>false
  	change_column :users, :last_name, :string, :null=>false
  end

  def down
  	change_column :users, :username, :string, :null=>true
  	change_column :users, :password, :string, :null=>true
  	change_column :users, :email, :string, :null=>true
  	change_column :users, :first_name, :string, :null=>true
  	change_column :users, :last_name, :string, :null=>true
  end
end
