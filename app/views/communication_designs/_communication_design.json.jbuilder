json.extract! communication_design, :id, :Marcom_ID, :Task_Name, :Description, :File, :Deadline, :Person_in_Charge, :Note, :created_at, :updated_at
json.url communication_design_url(communication_design, format: :json)
json.File url_for(communication_design.File)
