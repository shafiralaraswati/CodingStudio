-- Menambahkan Rp pada Staff Salary dengan Syntax CAST--
--CAST(nama_kolom AS Nama_kolom_yang_diinginkan)--
SELECT [Gaji] = 'Rp' + CAST(StaffSalary AS VARCHAR)
FROM Staff;
--Mengubah tanggal dengan Syntax CONVERT--
--CONVERT(Tipe_data_yang_diinginkan, nama_kolom, kode_tujuan)
SELECT [Tangga yang sudah di-konvert] = CONVERT(VARCHAR, TransactionDate, 107)
FROM HeaderSellTransaction;