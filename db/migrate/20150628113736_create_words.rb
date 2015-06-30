class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.text :definition
      t.string :form

      t.timestamps null: false
    end
  end
end
