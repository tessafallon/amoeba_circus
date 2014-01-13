class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :act_name
      t.datetime :date

      t.timestamps
    end
  end
end
