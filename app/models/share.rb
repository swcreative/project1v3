class Share < ApplicationRecord
  has_many :notes

  def self.get_share share
    # set up the api Key
    StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')
    # request stock info
    # @share_info = StockQuote::Stock.quote share.upcase;
    # @share_info = https://api.etrade.com/v1/market/quote/{symbols}</code>
              
    @share = Share.new
    @share.code = @share_info.symbol

    @share.price = @share_info.close
    @share.company = @share_info.company
    @share.save
    @share
  end



end
