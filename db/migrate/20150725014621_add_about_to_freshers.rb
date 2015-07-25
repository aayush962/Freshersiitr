class AddAboutToFreshers < ActiveRecord::Migration
  def change
    add_column :freshers, :about, :text
  end
end
