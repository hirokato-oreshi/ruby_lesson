#掛け算表

#数
int = 9

for i in 1..int   
    for r in 1..int
        if i*r < 10 then
            print (i * r).to_s + "  "
        else
            print (i * r).to_s + " "
        end
    end
    puts""
end
