require "google/api_client"
require "google_drive"
class Project < ActiveRecord::Base
 
  hstore_accessor :data,
    tags: :array # deprecated
 
  belongs_to :user

 #def get_access_token
 #  client = Google::APIClient.new
 #  auth = client.authorization
 #  auth.client_id = ENV["GOOGLE_CLIENT_ID"]
 #  auth.client_secret = ENV["GOOGLE_CLIENT_SECRET"]
 #  auth.scope = [
 #    "https://www.googleapis.com/auth/drive",
 #    "https://spreadsheets.google.com/feeds/"
 #  ]
 #  auth.redirect_uri = "urn:ietf:wg:oauth:2.0:oob"
 #  print("1. Open this page:\n%s\n\n" % auth.authorization_uri)
 #  print("2. Enter the authorization code shown in the page: ")
 #  auth.code = $stdin.gets.chomp
 #  auth.fetch_access_token!
 #  access_token = auth.access_token
 #  session = GoogleDrive.login_with_oauth(access_token)
 #  session
 #end

end
