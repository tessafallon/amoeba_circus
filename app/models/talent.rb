class Talent < ActiveRecord::Base
attr_accessible :name, :amoeba_id
belongs_to :amoebas

end
