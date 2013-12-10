class CreateStudentsTable < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
    end
  end

  def down
  end
end
