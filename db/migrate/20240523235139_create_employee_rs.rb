class CreateEmployeeRs < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_rs do |t|
      t.string :name
      t.integer :age
      t.integer :salary
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
