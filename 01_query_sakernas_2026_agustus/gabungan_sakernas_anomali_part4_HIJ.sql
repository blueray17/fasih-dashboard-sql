-- Bagian 4 dari 7 — kelompok cek: H, I, J
-- Keterangan lengkap daftar anomali dapat dilihat di sini : http://s.bps.go.id/anomali_sakernas_ags26

WITH

H_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',H1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND mjj_kbli_value IS NOT NULL
  AND mjj_kbji_value = 2330 
  AND mjj_kbli_value <> 85311 
  AND mjj_kbli_value <> 85312 
  AND mjj_kbli_value <> 85313 
  AND mjj_kbli_value <> 85314 
  AND mjj_kbli_value <> 85315 
  AND mjj_kbli_value <> 85316 
  AND mjj_kbli_value <> 85317 
  AND mjj_kbli_value <> 85318 
  AND mjj_kbli_value <> 85321 
  AND mjj_kbli_value <> 85322 
  AND mjj_kbli_value <> 85323 
  AND mjj_kbli_value <> 85324 
  AND mjj_kbli_value <> 85330
),

H_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',H2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND sjj_kbli_value IS NOT NULL
  AND sjj_kbji_value = 2330 
  AND sjj_kbli_value <> 85311 
  AND sjj_kbli_value <> 85312 
  AND sjj_kbli_value <> 85313 
  AND sjj_kbli_value <> 85314 
  AND sjj_kbli_value <> 85315 
  AND sjj_kbli_value <> 85316 
  AND sjj_kbli_value <> 85317 
  AND sjj_kbli_value <> 85318 
  AND sjj_kbli_value <> 85321 
  AND sjj_kbli_value <> 85322 
  AND sjj_kbli_value <> 85323 
  AND sjj_kbli_value <> 85324 
  AND sjj_kbli_value <> 85330
),

H_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',H3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND mpk_kbli_value IS NOT NULL
  AND mpk_kbji_value = 2330 
  AND mpk_kbli_value <> 85311 
  AND mpk_kbli_value <> 85312 
  AND mpk_kbli_value <> 85313 
  AND mpk_kbli_value <> 85314 
  AND mpk_kbli_value <> 85315 
  AND mpk_kbli_value <> 85316 
  AND mpk_kbli_value <> 85317 
  AND mpk_kbli_value <> 85318 
  AND mpk_kbli_value <> 85321 
  AND mpk_kbli_value <> 85322 
  AND mpk_kbli_value <> 85323 
  AND mpk_kbli_value <> 85324 
  AND mpk_kbli_value <> 85330
),

I_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',I1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjjemprel1_value IS NOT NULL
  AND mjj_kbji_value IS NOT NULL
  AND mjj_kbli_value IS NOT NULL
  AND mju_ins_value IS NOT NULL
  AND (mjj_kbji_value 
        >= 0111 AND mjj_kbji_value 
        <= 0315) 
  AND (
        (mjj_kbli_value < 84221 OR mjj_kbli_value > 84232) 
        OR mjjemprel1_value <> 1 
        OR mju_ins_value <> 1
      )
),

I_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',I2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjjemprel1_value IS NOT NULL
  AND sjj_kbli_value IS NOT NULL 
  AND sjj_kbji_value IS NOT NULL
  AND (sjj_kbji_value >= 0111 AND sjj_kbji_value <= 0315) 
  AND ((sjj_kbli_value < 84221 OR sjj_kbli_value > 84232) 
          OR sjjemprel1_value <> 1
      ) 
),

I_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',I3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_status_value IS NOT NULL
  AND mpk_kbli_value IS NOT NULL
  AND mpk_kbji_value IS NOT NULL
  AND (mpk_kbji_value >= 0111 AND mpk_kbji_value <= 0315) 
  AND ((mpk_kbli_value < 84221 OR mpk_kbli_value > 84232) 
        OR mpk_status_value <> 4
      )
),

J_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',J1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND (mjj_kbji_value >= 0111 AND mjj_kbji_value <= 0115) 
  AND (dem_edl_value < 9 OR dem_age < 18)
),

J_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',J2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND (sjj_kbji_value >= 0111 AND sjj_kbji_value <= 0115) 
  AND (dem_edl_value < 9 OR dem_age < 18)
),

J_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',J3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND (mpk_kbji_value >= 0111 AND mpk_kbji_value <= 0115) 
  AND (dem_edl_value < 9 OR dem_age < 18)
)

SELECT 'H' AS kelompok_cek,
       art.level_1_full_code,
       art.level_1_name AS PROV,
       art.level_2_full_code,
       art.level_2_name AS KAB,
       art.level_3_name AS KEC,
       art.level_4_name AS DESA,
       art.level_5_name AS SLS,
       art.level_6_full_code,
       art.level_6_name AS SUBSLS,
       root.nks AS NKS,
       root.no_dsrt AS DSRT,
       root.namakrt AS namaKRT,
       art.ppno AS NO_ART,
       art.dem_name AS NAMA_ART,
       dem_age,
       CONCAT('mjj_kbji_value: ', mjj_kbji_value, '; ', 'mjj_kbli_value: ', mjj_kbli_value, '; ', 'sjj_kbji_value: ', sjj_kbji_value, '; ', 'sjj_kbli_value: ', sjj_kbli_value, '; ', 'mpk_kbji_value: ', mpk_kbji_value, '; ', 'mpk_kbli_value: ', mpk_kbli_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       art.assignment_id AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN H_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN H_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN H_anomali_3 as a3
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

SELECT 'I' AS kelompok_cek,
       art.level_1_full_code,
       art.level_1_name AS PROV,
       art.level_2_full_code,
       art.level_2_name AS KAB,
       art.level_3_name AS KEC,
       art.level_4_name AS DESA,
       art.level_5_name AS SLS,
       art.level_6_full_code,
       art.level_6_name AS SUBSLS,
       root.nks AS NKS,
       root.no_dsrt AS DSRT,
       root.namakrt AS namaKRT,
       art.ppno AS NO_ART,
       art.dem_name AS NAMA_ART,
       dem_age,
       CONCAT('MJJEMPREL1_MJU_INS: ', CONCAT('MJJEmprel1_Value: ',mjjemprel1_value,'; MJU_ins: ',mju_ins_value), '; ', 'MJJ_KBJI_KBLI: ', CONCAT('MJJ_KBJI: ',mjj_kbji_value,'; MJJ_KBLI: ',mjj_kbli_value), '; ', 'sjjemprel1_value: ', sjjemprel1_value, '; ', 'SJJ_KBJI_KBLI: ', CONCAT('SJJ_KBJI: ',sjj_kbji_value,'; SJJ_KBLI: ',sjj_kbli_value), '; ', 'mpk_status_value: ', mpk_status_value, '; ', 'MPK_KBJI_KBLI: ', CONCAT('MPK_KBJI: ',mpk_kbji_value,'; MPK_KBLI: ',mpk_kbli_value), '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       art.assignment_id AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN I_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN I_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN I_anomali_3 as a3
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

SELECT 'J' AS kelompok_cek,
       art.level_1_full_code,
       art.level_1_name AS PROV,
       art.level_2_full_code,
       art.level_2_name AS KAB,
       art.level_3_name AS KEC,
       art.level_4_name AS DESA,
       art.level_5_name AS SLS,
       art.level_6_full_code,
       art.level_6_name AS SUBSLS,
       root.nks AS NKS,
       root.no_dsrt AS DSRT,
       root.namakrt AS namaKRT,
       art.ppno AS NO_ART,
       art.dem_name AS NAMA_ART,
       dem_age,
       CONCAT('mjj_kbji_value: ', mjj_kbji_value, '; ', 'dem_edl_value: ', dem_edl_value, '; ', 'sjj_kbji_value: ', sjj_kbji_value, '; ', 'mpk_kbji_value: ', mpk_kbji_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       art.assignment_id AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN J_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN J_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN J_anomali_3 as a3
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
