json.offices @offices do |office|
  json.name office.name
  json.slug office.name.parameterize
  json.candidates office.candidates, partial: 'api/v1/candidates/candidate', as: :candidate
end