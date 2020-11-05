json.array! @reviews do |review|
  json.extract! review, :id, :content
end