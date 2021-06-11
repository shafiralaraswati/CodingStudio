SELECT * FROM Staff;
--Mengambil 1 Huruf dari kiri dengan Syntax LEFT--
SELECT [Jenis Kelamin] = LEFT(StaffGender,1)
FROM Staff;
--Mengambil 2 Huruf dari kanan dengan Syntax RIGHT--
SELECT [Test Right] = RIGHT(StaffName, 2)
FROM Staff;
--Membalikkan nama staff dengan Syntax REVERSE--
SELECT [Balik Nama] = REVERSE(StaffName)
FROM Staff;
--Mengetahui suatu huruf ada di indeks berapa dengan Syntax CHARINDEX--
SELECT [index huruf o] = CHARINDEX('o', StaffName)
FROM Staff
WHERE StaffPhone = '080152852175';
--Mengambil indeks ke 2 dan 4 huruf dengan Syntax SUBSTRING--
SELECT[indeks ke 2 4 huruf] = SUBSTRING(StaffName, 2, 4)
FROM Staff;
--Gabungan SUBSTRING dan CHARINDEX--
SELECT [Kata Pertama] = SUBSTRING(StaffName, 1, CHARINDEX(' ',StaffName)-1)
FROM Staff;
--Membuat semua huruf jadi besar dengan Syntax UPPER--
SELECT [Nama Huruf Besar] = UPPER(StaffName)
FROM Staff;
--Membuat semua huruf jadi kecil dengan Syntax LOWER--
SELECT [Nama Huruf Kecil] = LOWER(StaffName)
FROM Staff;