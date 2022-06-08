class Movie < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5, maximum: 100}
    validates :year, presence: true, length: {minimum: 4, maximum: 4}
    validates :genre, presence: true
    validates :poster, presence: true
    validates :plot, presence: true
    validates :response, presence: true
    validates :rating, presence: true





end