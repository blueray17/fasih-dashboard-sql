-- Bagian 5 dari 7 — kelompok cek: K, L, M
-- Keterangan lengkap daftar anomali dapat dilihat di sini : http://s.bps.go.id/anomali_sakernas_ags26

WITH

K_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',K1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND (mjj_kbji_value >= 0211 AND mjj_kbji_value <= 0215) 
  AND (dem_edl_value < 4 OR dem_age < 16)
),

K_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',K2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND (sjj_kbji_value >= 0211 AND sjj_kbji_value <= 0215) 
  AND (dem_edl_value < 4 OR dem_age < 16)
),

K_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',K3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND (mpk_kbji_value >= 0211 AND mpk_kbji_value <= 0215) 
  AND (dem_edl_value < 4 OR dem_age < 16)
),

L_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',L1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND (mjj_kbji_value >= 0311 AND mjj_kbji_value <= 0315) 
  AND (dem_edl_value < 3 OR dem_age < 16)
),

L_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',L2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND (sjj_kbji_value >= 0311 AND sjj_kbji_value <= 0315) 
  AND (dem_edl_value < 3 OR dem_age < 16)
),

L_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',L3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND (mpk_kbji_value >= 0311 AND mpk_kbji_value <= 0315) 
  AND (dem_edl_value < 3 OR dem_age < 16)
),

M_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',M1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND mjj_kbli_value IS NOT NULL
  AND (mjj_kbji_value 
        = 1311 OR mjj_kbji_value 
        = 1312 OR mjj_kbji_value 
        = 3142 OR mjj_kbji_value 
        = 3143 OR (mjj_kbji_value 
                    >= 6111 AND mjj_kbji_value 
                    <= 6340) 
                OR (mjj_kbji_value 
                    >= 9211 AND mjj_kbji_value 
                    <= 9216)
      ) 
  AND (mjj_kbli_value 
        < 01111 OR mjj_kbli_value 
        > 03300)
),

M_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',M2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND sjj_kbli_value IS NOT NULL
  AND (sjj_kbji_value 
        = 1311 OR sjj_kbji_value 
        = 1312 OR sjj_kbji_value 
        = 3142 OR sjj_kbji_value 
        = 3143 OR (sjj_kbji_value 
                    >= 6111 AND sjj_kbji_value 
                    <= 6340) 
               OR (sjj_kbji_value 
                    >= 9211 AND sjj_kbji_value 
                    <= 9216)
      ) 
  AND (sjj_kbli_value 
        < 01111 OR sjj_kbli_value 
        > 03300)
),

M_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',M3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND mpk_kbli_value IS NOT NULL
  AND (mpk_kbji_value 
        = 1311 OR mpk_kbji_value 
        = 1312 OR mpk_kbji_value 
        = 3142 OR mpk_kbji_value 
        = 3143 OR (mpk_kbji_value 
                    >= 6111 AND mpk_kbji_value 
                    <= 6340) 
               OR (mpk_kbji_value 
                    >= 9211 AND mpk_kbji_value 
                    <= 9216)
      ) 
  AND (mpk_kbli_value 
        < 01111 OR mpk_kbli_value 
        > 03300)
)

SELECT 'K' AS kelompok_cek,
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
       CONCAT('mjj_kbji_value: ', mjj_kbji_value, '; ', 'dem_edl_value: ', dem_edl_value, '; ', 'sjj_kbji_value: ', sjj_kbji_value, '; ', 'mpk_kbji_value: ', mpk_kbji_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       CONCAT('<a href="https://fasih-sm.bps.go.id/app/assignment-detail/', art.assignment_id ,'" target="_blank">Link Assignment</a>') AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN K_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN K_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN K_anomali_3 as a3
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

UNION ALL

SELECT 'L' AS kelompok_cek,
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
       CONCAT('mjj_kbji_value: ', mjj_kbji_value, '; ', 'dem_edl_value: ', dem_edl_value, '; ', 'sjj_kbji_value: ', sjj_kbji_value, '; ', 'mpk_kbji_value: ', mpk_kbji_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       CONCAT('<a href="https://fasih-sm.bps.go.id/app/assignment-detail/', art.assignment_id ,'" target="_blank">Link Assignment</a>') AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN L_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN L_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN L_anomali_3 as a3
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

UNION ALL

SELECT 'M' AS kelompok_cek,
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
       CONCAT('mjj_kbji_value: ', mjj_kbji_value, '; ', 'mjj_kbli_value: ', mjj_kbli_value, '; ', 'sjj_kbji_value: ', sjj_kbji_value, '; ', 'sjj_kbli_value: ', sjj_kbli_value, '; ', 'mpk_kbji_value: ', mpk_kbji_value, '; ', 'mpk_kbli_value: ', mpk_kbli_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       CONCAT('<a href="https://fasih-sm.bps.go.id/app/assignment-detail/', art.assignment_id ,'" target="_blank">Link Assignment</a>') AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN M_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN M_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN M_anomali_3 as a3
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
