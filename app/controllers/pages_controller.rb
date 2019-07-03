class PagesController < ApplicationController
  def index
    @posts = Post.all.order(:cached_votes_score=>:desc)
  end

  def userPage
    @posts = Post.all.order(:cached_votes_score=>:desc)
  end
end
