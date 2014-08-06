class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.references :employee, index: true
      t.references :ipadd, index: true
      t.string :action
      t.date :time

      t.timestamps
    end
  end
end
