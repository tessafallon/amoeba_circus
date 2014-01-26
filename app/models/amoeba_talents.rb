class Amoeba_Talent < ActiveRecord::Base
attr_accessible :talent_id :talent_name
belongs_to :amoebas
belongs_to :talents

end
