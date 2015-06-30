class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :year
      t.string :quarter
      t.text :summary

      t.timestamps null: false
    end
  end
end
