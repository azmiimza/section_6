string1 = 'Red,Green,Blue,White,Red'
array1 = ['Cyan', 'Blue', nil, 'Black']

# a. Buat Syntax untuk mengubah string jadi array
str_to_arr = string1.split(",")

# b. Buat Syntax untuk menggabungkan kedua array
join_array = str_to_arr.chain(array1).to_a
join_array = array1 + str_to_arr

# c. Buat Syntax untuk menghapus nilai nil dari array gabungan
join_array = join_array.reject { |arr| arr==nil }
join_array = join_array.select { |arr| arr!=nil }

# d.Buat Syntax untuk menghapus value duplicate
join_array = join_array.uniq

# e.Buat Syntax untuk mencek apakah ada value purple dalam array
join_array.any?("purple")
join_array.include?("purple")

# f.Buat Syntax untuk mengembalikan nilai array tanpa duplicate jadi string
join_array.join(",")

