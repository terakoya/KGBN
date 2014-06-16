class PageController < ApplicationController
  def index
    @topics = Topic.all 
  end
end
