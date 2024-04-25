class Movie < ApplicationRecord
    validates :title, presence: true
    validates :rating, presence: true, inclusion: { in: ['L', '10', '12', '14', '16', '18'] }
    validates :description, presence: true
    validate :release_date_is_valid_date

    def release_date_is_valid_date
        if release_date.present?
            errors.add(:release_date, 'não é uma data válida') unless release_date_is_valid_date?
        end
    end

    def release_date_is_valid_date?
        begin
            Date.parse(release_date)
            true
        rescue ArgumentError
            false
        end
    end
end
