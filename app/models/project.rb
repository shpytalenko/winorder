require "google/api_client"
require "google_drive"
class Project < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  belongs_to :user
  
  def load_from_yml
    list = YAML::load_file('results.yml')
    list.each do |el|
      Project.create(:data => el.to_s, :name => "#{el[:firstname]} #{ el[":lastname"] } ")
    end
  end
  
  def load_sheet_data
    drive = PullGoogleSheet.new
    sheet_data = drive.pull(self.name)
    self.data["sheet_data"] = sheet_data.to_json
    self.save
  end
  
  def load_pipedrive_data
    drive = PipedriveDealer.new(ENV["PIPEDRIVE_TOKEN"], self.name)
    pipedrive_data = drive.get_deal_data
    self.data["pipedrive_data"] = pipedrive_data.to_json 
    self.save
  end
end
