require 'csv'

items = [
  {"����": "�L�����K���i", "���i": 110, "�R�����g": "���܂�"},
  {"����": "�\�t�g�J�c�Q��", "���i": 220, "�R�����g": "���܂�"},
  {"����": "���{���i�|����", "���i": 150, "�R�����g": "���܂�"}
]

CSV.open("./items_sjis.csv", "wb", headers: items[0].keys.map(&:to_s), write_headers: true) do |csv|
  items.each do |item|
    csv << item.values
  end
end