#増えて真ん中で減る

#縦の列
lin = 11

#範囲の指定
array = 1..lin

#中央値を求める
cen = array.sum/array.size

#開始
for r in array
    #星の数を求める為の変数
    str_count = 0
    #中心値より前は1つづつ増える
    if r <= cen
        str_count = r 
    end
    #中央値より後は1つづつ減る
    if r > cen
        str_count = (cen - r) + cen
    end
    #求めた星の数だけ出力する 
    str = ""
    for i in 1..str_count 
        str = str + "★"
    end
    puts str
    
end


