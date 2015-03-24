class Blog < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, length: { minimum: 2, maximum: 10 }
  validates :author, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, length: { minimum: 2, maximum: 10 }
  validates :body, presence: true,  length: { minimum: 20, maximum: 500 }

  def self.by_recency
    order(created_at: :desc)
  end
end
