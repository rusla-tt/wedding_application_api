json.array!(@person_scores) do |person_score|
  json.extract! person_score, :id, :name, :score, :hi_score, :create, :update
  json.url person_score_url(person_score, format: :json)
end
