class Business < ActiveRecord::Base

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |f|
    row = Hash[[header, spreadsheet.row(f)].transpose]
      business = find_by_id(row["id"]) || new
      business.attributes = row.to_hash.slice(*accessible_attributes)
      business.save!
    end
  end

  def self.open_spreadsheet(file)
    Csv.new(file.path, nil, :ignore)
  end


end
