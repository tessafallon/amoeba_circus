class JoinAmoebasAndTalents < ActiveRecord::Migration
  def up
  	create_table :amoeba_talents do |t|
  		t.belongs_to :amoebas
  		t.belongs_to :talents
  	end
  end

  def down
  	drop_table :amoeba_tables
  end
end
