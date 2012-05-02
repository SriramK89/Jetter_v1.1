class CreateJets < ActiveRecord::Migration
  def change
    create_table :jets do |t|
      t.integer :userid
      t.text :content

      t.timestamps
    end
  end
end
