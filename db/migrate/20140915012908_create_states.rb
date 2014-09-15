class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :abbreviation
      t.string :state
      t.text :description

      t.timestamps
    end
  end
end
