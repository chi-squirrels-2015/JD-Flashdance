Deck.create!(category: "Geographic")

require 'csv'

csv_text = File.read('db/basic_english_czech.csv')
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
  Card.create!(question: row[0], answer: row[1], deck_id: 1)
end
