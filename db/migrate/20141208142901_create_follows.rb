class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :following
      t.belongs_to :user

      t.timestamps
    end
  end
end
