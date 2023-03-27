#Berapa total data pencatatan penumpang transjakarta yang di record pada tahun 2019?
SELECT sum(`sum(jumlah_penumpang)`) FROM (SELECT sum(jumlah_penumpang)
FROM januari
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM februari
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM maret
UNION ALL
SELECT sum(jumlah_penumpang)
FROM april
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM mei
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM juni
UNION ALL
SELECT sum(jumlah_penumpang)
FROM juli
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM agustus
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM september
UNION ALL
SELECT sum(jumlah_penumpang)
FROM oktober
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM november
UNION ALL 
SELECT sum(jumlah_penumpang)
FROM desember)a

 