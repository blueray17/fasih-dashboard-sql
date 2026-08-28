-- Bagian 7 dari 7 — kelompok cek: Q
-- Keterangan lengkap daftar anomali dapat dilihat di sini : http://s.bps.go.id/anomali_sakernas_ags26

WITH

Q_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',Q1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND dem_edl_value IS NOT NULL
  AND (mjj_kbji_value 
        >= 1113 AND mjj_kbji_value 
        <= 1431) 
  AND dem_edl_value < 2
),

Q_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',Q2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND dem_edl_value IS NOT NULL
  AND (sjj_kbji_value 
        >= 1113 AND sjj_kbji_value 
        <= 1431) 
  AND dem_edl_value < 2
),

Q_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',Q3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND dem_edl_value IS NOT NULL
  AND (mpk_kbji_value 
        >= 1113 AND mpk_kbji_value 
        <= 1431) 
  AND dem_edl_value < 2
)

SELECT 'Q' AS kelompok_cek,
       art.level_1_full_code,
       art.level_1_name AS PROV,
       art.level_2_full_code,
       art.level_2_name AS KAB,
       art.level_3_name AS KEC,
       art.level_4_name AS DESA,
       art.level_5_name AS SLS,
       art.level_6_name AS SUBSLS,
       root.nks AS NKS,
       root.no_dsrt AS DSRT,
       art.ppno AS NO_ART,
       art.dem_name AS NAMA_ART,
       dem_age,
       CONCAT('mjj_kbji_value: ', mjj_kbji_value, '; ', 'sjj_kbji_value: ', sjj_kbji_value, '; ', 'mpk_kbji_value: ', mpk_kbji_value, '; ', 'dem_edl_value: ', dem_edl_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       art.assignment_id AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN Q_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN Q_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN Q_anomali_3 as a3
                   ON a3.assignment_id = root.assignment_id AND 
			  a3.nks = root.nks AND 
        		  a3.no_dsrt = root.no_dsrt AND 
        		  a3.ppno = art.ppno AND
        		  a3.dem_name = art.dem_name
  LEFT JOIN tok_3fd42e0e.petugas as p
              ON p.assignment_id = root.assignment_id 
  LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1 AND (base.assignment_status_alias <> 'DRAFT' AND base.assignment_status_alias <> 'OPEN')
  AND (a1.anomali IS NOT NULL OR
		a2.anomali IS NOT NULL OR
		a3.anomali IS NOT NULL
	)
