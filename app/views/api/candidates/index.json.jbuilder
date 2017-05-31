json.array! @offices do |office|
  json.district_id @district_id
  json.office do
    json.name office.name
    json.candidates office.candidates, partial: 'api/candidates/candidate', as: :candidate
  end
end