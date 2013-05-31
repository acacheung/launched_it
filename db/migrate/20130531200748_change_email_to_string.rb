class ChangeEmailToString < ActiveRecord::Migration
  def up
    change_column :projects, :contact_email, :string
  end

  def down
    change_column :projects, :contact_email, :text
  end
end
