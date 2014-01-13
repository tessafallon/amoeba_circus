class CreateAmoebas < ActiveRecord::Migration
  def change
  	create_table :amoebas do |t|
  		t.string :name
  		t.integer :generation
  		t.integer :act_id
      	t.integer :talent_id
  	end

  	create_table :acts do |t|
  		t.string :name
  		t.datetime :date
  	end

  end
end
