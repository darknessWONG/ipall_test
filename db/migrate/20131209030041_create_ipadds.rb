class CreateIpadds < ActiveRecord::Migration
  def change
    create_table :ipadds do |t|
      t.string :ip
      t.references :employee, index: true

      t.timestamps
    end
  end
end
