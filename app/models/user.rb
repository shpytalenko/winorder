require "google/api_client"
require "google_drive"
require 'roo'
require 'date'
class User < ActiveRecord::Base
  
# Relations
has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Pagination
  paginates_per 100

  # Validations
  # :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def self.paged(page_number)
    order(admin: :desc, email: :asc).page page_number
  end

  def self.search_and_order(search, page_number)
    if search
      where("email LIKE ?", "%#{search.downcase}%").order(
      admin: :desc, email: :asc
      ).page page_number
    else
      order(admin: :desc, email: :asc).page page_number
    end
  end

  def self.last_signups(count)
    order(created_at: :desc).limit(count).select("id","email","created_at")
  end

  def self.last_signins(count)
    order(last_sign_in_at:
    :desc).limit(count).select("id","email","last_sign_in_at")
  end

  def self.users_count
    where("admin = ? AND locked = ?",false,false).count
  end

# def setup_auth
#   #@email = "email@developer.gserviceaccount.com"
#   @email = "shpytalenko@gmail.com"
#   @key = "/home/pasha/Downloads/test-5cb66c7ee795.p12"

#   key = Google::APIClient::KeyUtils.load_from_pkcs12(@key, 'notasecret')

#   auth = Signet::OAuth2::Client.new(
#     token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
#     audience: 'https://accounts.google.com/o/oauth2/token',
#     scope: ["https://www.googleapis.com/auth/drive", "https://spreadsheets.google.com/feeds/"].join(' '),
#     issuer: @email,
#     access_type: 'offline',
#     signing_key: key
#   )
#   auth.fetch_access_token!
#   binding.pry
#   return auth.access_token   
# end
# 
# def fetch_spreadsheet_data()
# google_user = "shpytalenko@gmail.com"
# google_password = "djusepo+"

# workbook = Roo::Google.new("adeerqasfafaf",user: google_user, password: google_password)
#binding.pry
# workbook.default_sheet = workbook.sheets[0]
#
# # Create a hash of the headers so we can access columns by name (assuming row
# # 1 contains the column headings). This will also grab any data in hidden
# # columns.
# headers = Hash.new
# workbook.row(1).each_with_index {|header,i|
# headers[header] = i
# }

# graph_data = []
# # Iterate over the rows using the `first_row` and `last_row` methods. Skip
# # the header row in the range.
# ((workbook.first_row + 1)..workbook.last_row).each do |row|
# 	value = workbook.row(row)[headers['Value']]
# 	date = workbook.row(row)[headers['Date']]  	
# 	timestamp = DateTime.parse(date).to_time.to_i
# 	graph_data << { x: timestamp, y: value }
# end
# send_event('YOUR GRAPH WIDGET NAME', points: graph_data.last(50))
#nd
# def view_sheet
#   
# end

end
