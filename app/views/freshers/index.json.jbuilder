json.array!(@freshers) do |fresher|
  json.extract! fresher, :id, :name, :enroll, :skills, :email, :contact, :room, :branch, :interests
  json.url fresher_url(fresher, format: :json)
end
