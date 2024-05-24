json.extract! employee_r, :id, :name, :age, :salary, :company_id, :created_at, :updated_at
json.url employee_r_url(employee_r, format: :json)
