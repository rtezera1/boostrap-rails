class Comment < ActiveRecord::Base
  belongs_to :blog
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, length: { minimum: 2, maximum: 10 }
  validates :opinion, presence: true, length: { minimum: 2, maximum: 100 }

  def self.by_recency
    order(created_at: :desc)
  end
end
