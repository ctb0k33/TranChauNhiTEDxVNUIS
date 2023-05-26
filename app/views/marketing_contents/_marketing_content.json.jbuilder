json.extract! marketing_content, :id, :Marcom_ID, :Content_Name, :Description, :File, :Social_Networking_Platform, :Deadline, :Person_in_Charge, :Note, :created_at, :updated_at
json.url marketing_content_url(marketing_content, format: :json)
json.File url_for(marketing_content.File)
