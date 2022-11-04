class Song < ApplicationRecord
  def stringify
    string = "#{artist} says #{lyrics} for #{duration} seconds."
  end
end
