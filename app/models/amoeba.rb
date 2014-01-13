class Amoeba < ActiveRecord::Base
attr_accessible :name, :act_id, :talent_id, :generation
  belongs_to :act
	has_one :talent

	def split!
    	2.times do
        Amoeba.create({
        :name => 'Jeff',
        :generation => generation + 1,
        :talent_id => talent_id,
        :act_ids => act_ids
      })
    end
    self.destroy
  end
end
