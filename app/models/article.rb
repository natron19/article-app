class Article < ActiveRecord::Base
  belongs_to :user

  has_many :comments, dependent: :destroy

  validates_presence_of :title
  validates :title, uniqueness: true, uniqueness: { message: "This article title has already been posted."}
  validates :title, length: { minimum: 5}
  validates :body, length: { minimum: 10}
end
