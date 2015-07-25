class CreateFreshers < ActiveRecord::Migration
  def change
    create_table :freshers do |t|
      t.string :name
      t.string :enroll
      t.string :skills
      t.string :email
      t.string :contact
      t.string :room
      t.string :branch
      t.string :interests

      t.timestamps null: false
    end
  end
end
