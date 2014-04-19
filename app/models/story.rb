class Story < ActiveRecord::Base
  validates :title, length: {in: 1..250, too_long: "Only 250 characters allowed."}
  validates :author, length: {in: 1..75, too_long: "Only 75 characters allowed."}
  validates :body, length: {in: 1..5000, too_long: "This is 5k, only 5000 characters allowed."}
end
