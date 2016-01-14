json.array!(@words) do |word|
  json.extract! word, :id, :img, :word, :desc
  json.url word_url(word, format: :json)
end
