class Post < ActiveRecord::Base
  # include ActiveModel::Validations
  # validates_with MyValidator, :allow_nil => true

  validates :title, presence: true
  
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "%{category is not included!" }
  validates :title, clickbait: {is: true}

end
