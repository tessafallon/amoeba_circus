class Act < ActiveRecord::Base
	attr_accessible :act_name, :date
	has_many :amoebas
	has_many :talents, :through => :amoebas
end
