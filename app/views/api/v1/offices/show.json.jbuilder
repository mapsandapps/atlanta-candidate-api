json.extract! @office, :id ,:name, :slug
json.candidates @office.candidates, partial: 'api/v1/candidates/candidate', as: :candidate
