require "google/api_client"
require "google_drive"
class Project < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  belongs_to :user
  
  def load_sheet_data
    drive = PullGoogleSheet.new
    sheet_data = drive.pull(self.name)
    self.data["sheet_data"] = sheet_data.to_json
    self.save
  end

end
