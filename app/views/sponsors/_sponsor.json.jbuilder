json.extract! sponsor, :id, :Sponsor_ID, :Sponsor, :Contact_Number, :Email, :Address, :Sponsor_Type, :Sponsorship_Level, :Image_File, :Website_Link, :Contract_File, :Person_in_Charge, :Note, :created_at, :updated_at
json.url sponsor_url(sponsor, format: :json)
json.Image_File url_for(sponsor.Image_File)
json.Contract_File url_for(sponsor.Contract_File)
