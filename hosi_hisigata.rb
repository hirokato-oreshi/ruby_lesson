#ひし形

#縦の列
lin = 5

#範囲の指定
array = 1..lin

#中央値を求める
cen = array.sum/array.size

#開始
for r in array
    #星の数を求める為の変数
    str_count = 0
    #中央値より前は２つづつ増える
    if r <= cen
        str_count = r * 2 - 1  
    end
    #中央値より後は２つづつ減る
    if r > cen 
        dif = (r - cen )* 2
        str_count = lin - dif
    end
    #星を出力する
    str = ""
    for i in 1..str_count
        str = str + "★"
    end
    puts str.center(lin, "　")
end