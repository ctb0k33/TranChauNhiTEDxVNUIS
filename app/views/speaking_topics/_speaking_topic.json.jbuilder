json.extract! speaking_topic, :id, :Topic_ID, :Topic_Name, :Description, :Image_File, :Video_Url, :Workspace_Link, :created_at, :updated_at
json.url speaking_topic_url(speaking_topic, format: :json)
json.Image_File url_for(speaking_topic.Image_File)
