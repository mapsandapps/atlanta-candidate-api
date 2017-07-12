json.district @district_id
json.offices @offices do |office|
  json.name office.name
  json.slug office.name.parameterize
  json.candidates office.candidates, partial: 'api/candidates/candidate', as: :candidate
end