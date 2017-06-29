json.extract! @office, :id ,:name, :slug
json.candidates @office.candidates, partial: 'api/candidates/candidate', as: :candidate
