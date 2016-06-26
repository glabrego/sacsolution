class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :subject
      t.string :complaint_type
      t.string :content

      t.timestamps null: false
    end
  end
end
