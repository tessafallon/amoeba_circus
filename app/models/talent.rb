class Talent < ActiveRecord::Base
attr_accessible :name, :talent
has_many :amoebas
end
