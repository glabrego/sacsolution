class CreateSolicitations < ActiveRecord::Migration
  def change
    create_table :solicitations do |t|
      t.string :subject
      t.string :content
    end
  end
end
