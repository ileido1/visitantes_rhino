class Visitor < ApplicationRecord
    validates :date, presence: true
    validates :arrival, presence: true
    validates :name, presence: true
    validates :company, presence: true
    validates :eps, presence: true
    validates :arl, presence: true
    validates :rh, presence: true
    validates :alergy, presence: true
    validates :output, presence: true
    
end
