class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :code_base_url
      t.text :description
      t.text :contact_email

      t.timestamps
    end
  end
end
