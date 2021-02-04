class ImagepostsController < ApplicationController

  def index
    @article = Impression.find(Impression.group(:impressionable_id).order('count(impressionable_id) desc').limit(5).pluck(:impressionable_id))
  end
  
end
