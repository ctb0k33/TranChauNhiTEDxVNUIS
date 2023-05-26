json.extract! speaker, :id, :Speaker_ID, :Speaker_Name, :Topic_Name, :Bio, :Contact_Number, :Email, :Address, :DOB, :Personal_ID, :Image_File, :Social_Media_Link, :Person_in_Charge, :Note, :created_at, :updated_at
json.url speaker_url(speaker, format: :json)
json.Image_File url_for(speaker.Image_File)
