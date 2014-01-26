class Amoeba < ActiveRecord::Base
attr_accessible :name, :act_id, :talent_id, :generation
	has_many :talents

	def split
    	2.times do
        Amoeba.create({
        :name => 'Jeff',
        :generation => generation + 1,
        :talent_id => talent_id
      })
    end
    self.destroy
  end
end
