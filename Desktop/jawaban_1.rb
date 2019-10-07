array1 = [2, 5, 7, 8, 10, 13, 15, 20, 1, 1]

# a.Buat Syntax untuk mencek apakah value dalam array merupakan angka genap semua
array1.all? {|num| num%2==0}

# b. Buat Syntax untuk mencek apakah ada value 1 dalam array
array1.any?(1)
array1.include?(1)

# c.Buat Syntax untuk mendapatkan nilai ganjil dari array 
array1.select {|num| num%2==1}

# d.Buat Syntax untuk mendapatkan jumlah value dalam array
array1.reduce(:+)
array1.inject(:+)
array1.sum

# e.Buat Syntax untuk mendapatkan jumlah setiap 5 value dari array
sliced_array = array1.each_slice(5).to_a
sliced_array.collect { |x| x.sum }

# f. Buat Syntax untuk menjumlahkan nilai terkecil dan terbesar dari array
array1.min + array1.max

# g.Buat Syntax untuk menjumlahkan nilai pertama dengan terakhir dari array
array1.first + array1.last

# h.Buat Syntax untuk menghapus 5 nilai terkecil dari array
array1 -= array1.min(5)

# i.Buat Syntax untuk menjumlahkan 5 nilai terbesar dari array
array1.max(5).inject(:+)

# j.Buat Syntax untuk menghapus value duplicate dengan cara hash
array1.uniq.each_with_index.to_h
