class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :story
      t.string :author
      t.integer :pubflag, default: 1

      t.timestamps null: false
    end
  end
end
