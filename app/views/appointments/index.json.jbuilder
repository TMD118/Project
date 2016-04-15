json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :prefferedInstitution, :prefferedDoctor, :fromDate, :toDate, :prefferedTime, :detailsOfAilment
  json.url appointment_url(appointment, format: :json)
end
