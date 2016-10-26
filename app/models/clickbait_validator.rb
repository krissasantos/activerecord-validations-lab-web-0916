


class ClickbaitValidator < ActiveModel::Validator
  def validate(post)
    # titles = ["Won't Believe", "Secret", "Top", "Guess"]
    if post.title == nil
      post.errors[:title] << "I hate blankspaces. Fill this up!"
    elsif 
      # !titles.include?(post.title)
       !post.title.include?("Won't Believe" || "Secret" || "Top" || "Guess")
      post.errors[:title] << "C'mon man, more clickbaity."
    end
  end
end





