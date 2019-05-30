require 'csv'

items = [
  {"名称": "キリンガラナ", "価格": 110, "コメント": "うまい"},
  {"名称": "ソフトカツゲン", "価格": 220, "コメント": "うまい"},
  {"名称": "リボンナポリン", "価格": 150, "コメント": "うまい"}
]

CSV.open("./items_sjis.csv", "wb", headers: items[0].keys.map(&:to_s), write_headers: true) do |csv|
  items.each do |item|
    csv << item.values
  end
end