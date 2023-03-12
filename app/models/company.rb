class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    # give_freebie
    def give_freebie(dev, item_name, value)
        freebie = Freebie.new(item_name: item_name, value: value, dev_id: dev.id, company_id: self.id)
        freebie.save
    end

    # oldest company
    def self.oldest_company
        order(:founding_year).first
      end
end
