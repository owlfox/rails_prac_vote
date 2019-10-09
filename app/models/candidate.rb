class Candidate < ApplicationRecord
    validates :name, presence: true
    has_many :vote_logs

    scope :young_people, -> {where('age < 35')}
    scope :older_than, -> (x) {unscope(:where).where("age > #{x}")}

    default_scope {where('age > 0')}

    def self.available
        where(is_available: true)
    end
end
