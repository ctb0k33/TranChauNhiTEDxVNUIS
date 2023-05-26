json.extract! event_operation, :id, :Task_ID, :Task_Name, :Person_in_Charge, :Description, :Deadline, :Status, :Note, :created_at, :updated_at
json.url event_operation_url(event_operation, format: :json)
