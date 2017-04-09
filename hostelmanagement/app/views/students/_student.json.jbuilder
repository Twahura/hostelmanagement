json.extract! student, :id, :seat_id, :Student_name, :Institute, :Year, :Student_phone_no, :Address, :Guardians_name, :Guardians_phone_no, :Rent_date, :created_at, :updated_at
json.url student_url(student, format: :json)
