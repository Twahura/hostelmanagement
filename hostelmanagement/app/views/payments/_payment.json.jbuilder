json.extract! payment, :id, :student_id, :Paid_amount, :Payment_date, :created_at, :updated_at
json.url payment_url(payment, format: :json)
