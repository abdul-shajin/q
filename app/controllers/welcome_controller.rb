class WelcomeController < ApplicationController
  def index
  	@quotes = Quote.paginate(page: params[:page],:per_page => 10)
  end
end
