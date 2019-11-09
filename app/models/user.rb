class User < ApplicationRecord
    def self.to_csv(fields = column_names, options={})
      CSV.generate(options) do |csv|
      csv << fields
      all.each do |user|
        csv << user.attributes.value_at(*fields)
      end
    end
  end
end
