class SharesController < ApplicationController

  def index
    @share = Share.find params[shares.code]
  end

  def new
    @share = Share.new
  end

  def create
    share = Share.new params[:id]
    @current_user.shares << share
    redirect_to notes_path
  end

  def show
    @share = @current_user.Share.find share_params
  end

  def price
    # feetch the stock symbol
    @stock = params[:stock_code].upcase
    # set up the api Key
    StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')
    # request stock info
    info = StockQuote::Stock.quote @stock;
    @price = info.close #TODO: any error handling AT ALL
  end

  private
  def share_params
    params.require(:shares).permit(:code, :price, :company)

  end

end
