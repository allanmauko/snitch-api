class Article < ActiveRecord::Base
    belongs_to :author
    belongs_to :category
    has_many :comments
    has_many :likes
    has_many :bookmarks
  end