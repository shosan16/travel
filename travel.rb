require "pry"

plans = [
  {name: "沖縄旅行", price: 10000},
  {name: "北海道旅行", price: 20000},
  {name: "九州旅行", price: 15000},
]

puts "旅行プランを選択してください"
plans.each.with_index(1) do |plan,i|
  puts "#{i}. #{plan [:name]}（#{plan [:price]}円）"
end

while true
  print "プランの番号を選択 > "
  select_num = gets.to_i
  break if (1..3).include?(select_num)
  puts "1〜3の番号を入力してください"
end

puts "#{plans [select_num -1][:name]}ですね。"
puts "何名で予約されますか"
while true
  print "人数を入力 > "
  people_num = gets.to_i
  break if (1..).include?(people_num)
  puts "1人以上を入力してください"
end

puts "#{people_num}名ですね"

price_sum = plans[select_num -1][:price] * people_num

if people_num >= 5
  puts "5名以上なので10％割引になります"
  price_sum = price_sum * 0.9
end

puts "合計料金は#{price_sum.to_i}になります"

puts "add"