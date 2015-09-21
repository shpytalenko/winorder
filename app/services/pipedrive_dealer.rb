require 'rubygems'
class PipedriveDealer
  def initialize(api_token, deal_name)  
    # Instance variables  
    @api_token = api_token  
    @deal_name = deal_name
    PipedrivePUT.key(api_token)
  end  
  
  def get_deal_data
    deal = PipedrivePUT::Search.search(@deal_name) rescue nil
  end
end
