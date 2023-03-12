class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    # print_details
    # {insert dev's name} owns a {insert freebie's item_name} from {insert company's name}
    def print_details
        puts "#{self.dev.name} owns a #{self.freebie.item_name} from #{self.company.name}"
    end
end
