SELECT REPLACE (`jenis`,'BRT', 'Bus Rapid Transfer') as jenis_baru FROM 
(SELECT jenis FROM januari
UNION ALL
SELECT jenis FROM februari
UNION ALL
SELECT jenis FROM maret
UNION ALL
SELECT jenis FROM april
UNION ALL
SELECT jenis FROM mei
UNION ALL
SELECT jenis FROM juni
UNION ALL 
SELECT jenis FROM juli
UNION ALL 
SELECT jenis FROM agustus 
UNION ALL 
SELECT jenis FROM september
UNION ALL
SELECT jenis FROM oktober
UNION ALL
SELECT jenis FROM november
UNION ALL 
SELECT jenis FROM desember) a