-- Bagian 2 dari 7 — kelompok cek: C, D
-- Keterangan lengkap daftar anomali dapat dilihat di sini : http://s.bps.go.id/anomali_sakernas_ags26

WITH

C_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND dem_edl_value IS NOT NULL
  AND (dem_edl_value 
      >= 4 AND dem_edl_value
      <= 12)
  AND (dem_edf_kd_value IS NULL OR dem_edf_kd_value = '')
),

C_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND dem_p1th_value IS NOT NULL 
  AND dem_p1th_value = 1 
  AND (dem_kdpl_x_value IS NULL OR dem_kdpl_x_value = '')
),

C_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_emprel_value IS NOT NULL
  AND (mjj_kbli_value IS NULL OR mjj_kbli_value = '')
),

C_anomali_4 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C4' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_emprel_value IS NOT NULL
  AND (mjj_kbji_value IS NULL OR mjj_kbji_value = '')
),

C_anomali_5 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C5' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjb_text_value IS NOT NULL 
  AND sjb_text_value = 1 
  AND (sjj_kbli_value IS NULL OR sjj_kbli_value = '')
),

C_anomali_6 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C6' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjb_text_value IS NOT NULL 
  AND sjb_text_value = 1 
  AND (sjj_kbji_value IS NULL OR sjj_kbji_value = '')
),

C_anomali_7 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C7' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_henti_value IS NOT NULL 
  AND mpk_henti_value = 1 
  AND (mpk_kbli_value IS NULL OR mpk_kbli_value = '')
),

C_anomali_8 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C8' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_henti_value IS NOT NULL 
  AND mpk_henti_value = 1 
  AND (mpk_kbji_value IS NULL OR mpk_kbji_value = '')
),

C_anomali_9 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C9' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 15
  AND pkln_wkt_y IS NOT NULL 
  AND pkln_wkt_m_value IS NOT NULL 
  AND ((pkln_wkt_y 
        = 2021 AND pkln_wkt_m_value 
        >= 8) OR (pkln_wkt_y 
        = 2025 AND pkln_wkt_m_value 
        <= 8) OR (pkln_wkt_y 
        > 2021 AND pkln_wkt_y 
        < 2025)) 
  AND (pkln_kbli_value IS NULL OR pkln_kbli_value = '')
),

C_anomali_10 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',C10' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 15
  AND pkln_wkt_y IS NOT NULL 
  AND pkln_wkt_m_value IS NOT NULL 
  AND ((pkln_wkt_y 
        = 2021 AND pkln_wkt_m_value 
        >= 8) OR (pkln_wkt_y 
        = 2025 AND pkln_wkt_m_value 
        <= 8) OR (pkln_wkt_y 
        > 2021 AND pkln_wkt_y 
        < 2025)) 
  AND (pkln_kbji_value IS NULL OR pkln_kbji_value = '')
),

D_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',D1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbli_value IS NOT NULL
  AND (mjj_kbli_value 
        >= 84111 AND mjj_kbli_value
        <= 84300)
  AND mjjemprel1_value IS NOT NULL
  AND mjj_emprel_value IS NOT NULL
  AND mig_ctz_value IS NOT NULL
  AND mjj_rem_ta_value IS NOT NULL
  AND mjj_p_uph_value IS NOT NULL
  AND (mjjemprel1_value = 2 OR mjj_emprel_value = 2 OR mjj_emprel_value = 3 OR mjj_emprel_value = 5
        OR mig_ctz_n_value = 2 OR mjj_rem_ta_value = 2 OR mjj_p_uph_value <> 1)
),

D_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',D2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbli_value IS NOT NULL
  AND (sjj_kbli_value 
        >= 84111 AND sjj_kbli_value 
        <= 84300)
  AND sjjemprel1_value IS NOT NULL
  AND sjj_emprel_value IS NOT NULL
  AND mig_ctz_value IS NOT NULL
  AND sjd_rem_ta_value IS NOT NULL
  AND (sjjemprel1_value = 2 
        OR sjj_emprel_value = 2 
        OR sjj_emprel_value = 3 
        OR sjj_emprel_value = 5 
        OR mig_ctz_value = 2 
        OR sjd_rem_ta_value = 2)
),

D_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',D3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbli_value IS NOT NULL
  AND (mpk_kbli_value >= 84111 
        AND mpk_kbli_value <= 84300)
  AND mpk_status_value IS NOT NULL
  AND mig_ctz_value IS NOT NULL
  AND (mpk_status_value = 1 OR 
        mpk_status_value = 2 OR 
        mpk_status_value = 3 OR 
        mpk_status_value = 5 OR 
        mpk_status_value = 6 OR 
        mpk_status_value = 7 OR 
        mpk_status_value = 9 OR 
        mig_ctz_value = 2)
)

SELECT 'C' AS kelompok_cek,
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
       CONCAT('dem_edl_value: ', dem_edl_value, '; ', 'dem_p1th_value: ', dem_p1th_value, '; ', 'mjj_emprel_value: ', mjj_emprel_value, '; ', 'sjb_text_value: ', sjb_text_value, '; ', 'mpk_henti_value: ', mpk_henti_value, '; ', 'pkln_wkt_y: ', pkln_wkt_y, '; ', 'pkln_wkt_m_value: ', pkln_wkt_m_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali, a4.anomali, a5.anomali, a6.anomali, a7.anomali, a8.anomali, a9.anomali, a10.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       CONCAT('<a href="https://fasih-sm.bps.go.id/app/assignment-detail/', art.assignment_id ,'" target="_blank">Link Assignment</a>') AS Link,
       base.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN C_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			        a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN C_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			        a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN C_anomali_3 as a3
                   ON a3.assignment_id = root.assignment_id AND 
			        a3.nks = root.nks AND 
        		  a3.no_dsrt = root.no_dsrt AND 
        		  a3.ppno = art.ppno AND
        		  a3.dem_name = art.dem_name
  LEFT JOIN C_anomali_4 as a4
                   ON a4.assignment_id = root.assignment_id AND 
			        a4.nks = root.nks AND 
        		  a4.no_dsrt = root.no_dsrt AND 
        		  a4.ppno = art.ppno AND
        		  a4.dem_name = art.dem_name
  LEFT JOIN C_anomali_5 as a5
                   ON a5.assignment_id = root.assignment_id AND 
			        a5.nks = root.nks AND 
        		  a5.no_dsrt = root.no_dsrt AND 
        		  a5.ppno = art.ppno AND
        		  a5.dem_name = art.dem_name
  LEFT JOIN C_anomali_6 as a6
                   ON a6.assignment_id = root.assignment_id AND 
			        a6.nks = root.nks AND 
        		  a6.no_dsrt = root.no_dsrt AND 
        		  a6.ppno = art.ppno AND
        		  a6.dem_name = art.dem_name
  LEFT JOIN C_anomali_7 as a7
                   ON a7.assignment_id = root.assignment_id AND 
			        a7.nks = root.nks AND 
        		  a7.no_dsrt = root.no_dsrt AND 
        		  a7.ppno = art.ppno AND
        		  a7.dem_name = art.dem_name
	LEFT JOIN C_anomali_8 as a8
                   ON a8.assignment_id = root.assignment_id AND 
			        a8.nks = root.nks AND 
        		  a8.no_dsrt = root.no_dsrt AND 
        		  a8.ppno = art.ppno AND
        		  a8.dem_name = art.dem_name
	LEFT JOIN C_anomali_9 as a9
                   ON a9.assignment_id = root.assignment_id AND 
			        a9.nks = root.nks AND 
        		  a9.no_dsrt = root.no_dsrt AND 
        		  a9.ppno = art.ppno AND
        		  a9.dem_name = art.dem_name
  LEFT JOIN C_anomali_10 as a10
                   ON a10.assignment_id = root.assignment_id AND 
			        a10.nks = root.nks AND 
        		  a10.no_dsrt = root.no_dsrt AND 
        		  a10.ppno = art.ppno AND
        		  a10.dem_name = art.dem_name
  LEFT JOIN tok_3fd42e0e.petugas as p
              ON p.assignment_id = root.assignment_id 
  LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1 AND (base.assignment_status_alias = 'APPROVED BY PML' OR base.assignment_status_alias = 'APPROVED BY Admin Kabupaten' OR base.assignment_status_alias = 'APPROVED BY Admin Provinsi' OR base.assignment_status_alias = 'COMPLETED BY Admin Provinsi')
  AND (a1.anomali IS NOT NULL OR
		a2.anomali IS NOT NULL OR
		a3.anomali IS NOT NULL OR 
		a4.anomali IS NOT NULL OR
		a5.anomali IS NOT NULL OR
		a6.anomali IS NOT NULL OR 
		a7.anomali IS NOT NULL OR 
		a8.anomali IS NOT NULL OR
		a9.anomali IS NOT NULL OR
		a10.anomali IS NOT NULL
	)

UNION ALL

SELECT 'D' AS kelompok_cek,
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
       CONCAT('mjj_kbli_value: ', mjj_kbli_value, '; ', 'mjj_emprel: ', CONCAT('mjjemprel1_value: ',mjjemprel1_value,'; mjj_emprel_value: ',mjj_emprel_value), '; ', 'mjj_rem_ta_value: ', mjj_rem_ta_value, '; ', 'sjj_kbli_value: ', sjj_kbli_value, '; ', 'sjj_emprel: ', CONCAT('sjjemprel1_value: ',sjjemprel1_value,'; sjj_emprel_value: ',sjj_emprel_value), '; ', 'mpk: ', CONCAT('mpk_kbli_value: ',mpk_kbli_value,'; mpk_status_value: ',mpk_status_value), '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) as petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       CONCAT(root.catatan,'; ',root.survey_period_id) as catatan,
       CONCAT('<a href="https://fasih-sm.bps.go.id/app/assignment-detail/', art.assignment_id ,'" target="_blank">Link Assignment</a>') AS Link,
       base.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN D_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN D_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN D_anomali_3 as a3
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
