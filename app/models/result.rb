class Result < ApplicationRecord
    def self.to_csv (fileds=column_names, options = {})
        CSV.generate(options) do |csv|
          csv << fileds
          all.each do |result|
            csv << result.attributes.values_at(*fileds)
          end
        end
      end
end
