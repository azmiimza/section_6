array1 =  [{:actor => "will smith", :film => "i am legend"}, {:actor => "brad pitt", :film => "fight club"}, {:actor => "frodo", :film => "the hobbit"},{:actor => "will smith", :film => "aladdin"}, {:actor => "frodo", :film => "lord of the rings"}]

# a.Buat Syntax untuk mengrup film berdasarkan actor
array1.group_by { |x| x[:actor] }

# b. Buat Syntax untuk mengurutkan actor berdasarkan jumlah filmnya dimulai dari yang terbanyak
array1.group_by { |x| x[:actor]}.sort_by{|actor,film| -film.size}.map(&:first)

# c. Buat Syntax untuk menghilangkan object yang actornya brad pitt dan filmnya lord of the rings
array1.reject { |x| x[:actor]=="brad pitt" && x[:film]=="lord of the rings"}

# d. Buat Syntax untuk mendapatkan array yang berisi film saja
array1.collect {|x| x[:film] }

