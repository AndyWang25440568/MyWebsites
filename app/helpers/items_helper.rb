module ItemsHelper
  def calc_ratings (comments)
    ratings = 0.0
    count = 0
    comments.each do |c|
      if not c.grade.nil?
        ratings += c.grade
        count += 1
      end
    end
    ratings = (ratings / count).round(2)
  end
end
