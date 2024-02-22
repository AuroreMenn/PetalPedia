class Flower < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        %w[name scientific_name flower_type blooming color description]
      end
end
