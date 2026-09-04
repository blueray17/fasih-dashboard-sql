-- Bagian 6 dari 7 — kelompok cek: N, O, P
-- Keterangan lengkap daftar anomali dapat dilihat di sini : http://s.bps.go.id/anomali_sakernas_ags26

WITH

N_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',N1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbli_value IS NOT NULL
  AND dem_edl_value IS NOT NULL
  AND ((mjj_kbli_value 
        >= 64110 AND mjj_kbli_value 
        <= 64124) OR (mjj_kbli_value 
        >= 84111 AND mjj_kbli_value 
        <= 84234) OR mjj_kbli_value 
        = 99000) 
  AND dem_edl_value < 2
      
),

N_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',N2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND dem_edl_value IS NOT NULL
  AND sjj_kbli_value IS NOT NULL
  AND ((sjj_kbli_value 
        >= 64110 AND sjj_kbli_value 
        <= 64124) OR (sjj_kbli_value 
        >= 84111 AND sjj_kbli_value 
        <= 84234) OR sjj_kbli_value 
        = 99000) 
  AND dem_edl_value < 2
),

N_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',N3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND dem_edl_value IS NOT NULL
  AND mpk_kbli_value IS NOT NULL
  AND ((mpk_kbli_value 
        >= 64110 AND mpk_kbli_value 
        <= 64124) OR (mpk_kbli_value 
        >= 84111 AND mpk_kbli_value 
        <= 84234) OR mpk_kbli_value 
        = 99000) 
  AND dem_edl_value < 2
),

O_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',O1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND mjj_kbli_value IS NOT NULL
  AND mjjemprel1_value IS NOT NULL
  AND mjj_emprel_value IS NOT NULL
  AND mju_ins_value IS NOT NULL
  AND (mjj_kbji_value 
      = 1111 OR mjj_kbji_value 
      = 1112 OR mjj_kbji_value 
      = 2612 OR mjj_kbji_value 
      = 3351 OR mjj_kbji_value 
      = 3352 OR mjj_kbji_value 
      = 3353 OR mjj_kbji_value 
      = 3354 OR mjj_kbji_value 
      = 3359 OR mjj_kbji_value 
      = 5411 OR mjj_kbji_value 
      = 5413) 
  AND ((mjj_kbli_value 
        < 84111 OR mjj_kbli_value 
        > 84300) OR mjjemprel1_value 
        = 2 OR mjj_emprel_value 
        = 2 OR mjj_emprel_value 
        = 3 OR mjj_emprel_value 
        = 5 OR mju_ins_value 
        <>1)
      
),

O_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',O2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbli_value IS NOT NULL
  AND sjj_kbji_value IS NOT NULL
  AND sjjemprel1_value IS NOT NULL
  AND sjj_emprel_value IS NOT NULL
  AND (sjj_kbji_value 
      = 1111 OR sjj_kbji_value 
      = 1112 OR sjj_kbji_value 
      = 2612 OR sjj_kbji_value 
      = 3351 OR sjj_kbji_value 
      = 3352 OR sjj_kbji_value 
      = 3353 OR sjj_kbji_value 
      = 3354 OR sjj_kbji_value 
      = 3359 OR sjj_kbji_value 
      = 5411 OR sjj_kbji_value 
      = 5413) 
  AND ((sjj_kbli_value 
        < 84111 OR sjj_kbli_value 
        > 84300) OR sjjemprel1_value 
        = 2 OR sjj_emprel_value 
        = 2 OR sjj_emprel_value 
        = 3 OR sjj_emprel_value
        = 5)
),

O_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',O3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbli_value IS NOT NULL
  AND mpk_kbji_value IS NOT NULL
  AND mpk_status_value IS NOT NULL
  AND (mpk_kbji_value 
      = 1111 OR mpk_kbji_value 
      = 1112 OR mpk_kbji_value 
      = 2612 OR mpk_kbji_value 
      = 3351 OR mpk_kbji_value 
      = 3352 OR mpk_kbji_value 
      = 3353 OR mpk_kbji_value 
      = 3354 OR mpk_kbji_value 
      = 3359 OR mpk_kbji_value 
      = 5411 OR mpk_kbji_value 
      = 5413
      ) 
  AND ((mpk_kbli_value 
        < 84111 OR mpk_kbli_value 
        > 84300) OR mpk_status_value 
        = 1 OR mpk_status_value 
        = 2 OR mpk_status_value 
        = 3 OR mpk_status_value 
        = 5 OR mpk_status_value 
        = 6 OR mpk_status_value 
        = 7 OR mpk_status_value 
        = 9)
),

P_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',P1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND ((mjj_kbji_value 
        >= 1111 AND mjj_kbji_value 
        <= 1431) OR (mjj_kbji_value 
        >= 2111 AND mjj_kbji_value 
        <= 2356) OR (mjj_kbji_value 
        >= 2411 AND mjj_kbji_value 
        <= 2643) OR (mjj_kbji_value 
        >= 3111 AND mjj_kbji_value 
        <= 3413)
        ) 
  AND dem_age < 15
),

P_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',P2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND ((sjj_kbji_value 
        >= 1111 AND sjj_kbji_value 
        <= 1431) OR (sjj_kbji_value 
        >= 2111 AND sjj_kbji_value 
        <= 2356) OR (sjj_kbji_value 
        >= 2411 AND sjj_kbji_value 
        <= 2643) OR (sjj_kbji_value 
        >= 3111 AND sjj_kbji_value 
        <= 3413)
        ) 
  AND dem_age <15
),

P_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',P3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND ((mpk_kbji_value 
        >= 1111 AND mpk_kbji_value 
        <= 1431) OR (mpk_kbji_value 
        >= 2111 AND mpk_kbji_value 
        <= 2356) OR (mpk_kbji_value 
        >= 2411 AND mpk_kbji_value 
        <= 2643) OR (mpk_kbji_value 
        >= 3111 AND mpk_kbji_value 
        <= 3413)
        ) 
  AND dem_age < 15
)


SELECT
       art.assignment_id,
       art.level_2_code AS KODE_KAB,
       art.level_6_full_code AS SUBSLS,
       root.nks AS NKS,
       root.no_dsrt AS DSRT,
       root.namaKRT,
       art.ppno AS NO_ART,
       art.dem_name AS NAMA_ART,
       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       root.catatan,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN N_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN N_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN N_anomali_3 as a3
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


SELECT
       art.assignment_id,
       art.level_2_code AS KODE_KAB,
       art.level_6_full_code AS SUBSLS,
       root.nks AS NKS,
       root.no_dsrt AS DSRT,
       root.namaKRT,
       art.ppno AS NO_ART,
       art.dem_name AS NAMA_ART,
       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       root.catatan,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN O_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN O_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN O_anomali_3 as a3
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


SELECT
       art.assignment_id,
       art.level_2_code AS KODE_KAB,
       art.level_6_full_code AS SUBSLS,
       root.nks AS NKS,
       root.no_dsrt AS DSRT,
       root.namaKRT,
       art.ppno AS NO_ART,
       art.dem_name AS NAMA_ART,
       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       root.catatan,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN P_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN P_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN P_anomali_3 as a3
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
