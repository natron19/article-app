class PagesController < ApplicationController
  def index
    if current_user
      redirect_to articles_path
    end
    @articles = Article.paginate(page: params[:page], per_page: 3).order("created_at DESC")
  end

  def about
  end

  def contact
    @contact = Contact.new
  end
end
