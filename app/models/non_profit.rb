class NonProfit < ActiveRecord::Base
  
  def get_image
    return image || 'default.jpg'
  end
end
