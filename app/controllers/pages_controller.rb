class PagesController < ApplicationController
  def home
    @posts = Blog.all 
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def me 
    @portfolios = Portfolio.all
  end  
end
