def disp_plan(plans)
  puts "旅行プランを選択してください"
  plans.each.with_index(1) do |plan,i|
    puts "#{i}. #{plan[:name]}（#{plan[:price]}円）"
  end
end

def chosen_plan(plans)
  print "プランの番号を選択 > "
  while true
    select_num = gets.to_i
    break if (1..3).include?(select_num)
    puts "1〜3の番号を入力してください"
  end
  puts "#{plans[select_num -1][:name]}ですね。"
  plans[select_num -1]
end

def num_of_people
  puts "何名で予約されますか"
  while true
    print "人数を入力 > "
    people_num = gets.to_i
    break if (1..).include?(people_num)
    puts "1人以上を入力してください"
  end
  puts "#{people_num}名ですね"
  people_num
end

def calculate_price(chosen_plan,selected_num_of_people)
  price_sum = chosen_plan[:price] * selected_num_of_people
  if selected_num_of_people>= 5
    puts "5名以上なので10％割引になります"
    price_sum = price_sum * 0.9
  end
  puts "合計料金は#{price_sum.to_i}になります"
end
