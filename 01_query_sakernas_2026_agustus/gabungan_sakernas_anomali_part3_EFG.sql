-- Bagian 3 dari 7 — kelompok cek: E, F, G
-- Keterangan lengkap daftar anomali dapat dilihat di sini : http://s.bps.go.id/anomali_sakernas_ags26

WITH

E_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',E1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_emprel_value IS NOT NULL
  AND mjj_emprel_value = 5 
  AND mjj_kbji_value IS NOT NULL
  AND (mjj_kbji_value 
        >= 0111 AND mjj_kbji_value 
        <= 4419)
),

E_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',E2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_emprel_value IS NOT NULL
  AND sjj_emprel_value = 5 
  AND sjj_kbji_value IS NOT NULL
  AND (sjj_kbji_value 
        >= 0111 AND sjj_kbji_value 
        <= 4419)
),

E_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',E3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_status_value IS NOT NULL
  AND mpk_status_value = 9 
  AND mpk_kbji_value IS NOT NULL
  AND (mpk_kbji_value 
        >= 0111 AND mpk_kbji_value
        <=4419)
),

F_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',F1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_emprel_value IS NOT NULL
  AND mjj_emprel_value = 5 
  AND mjj_kbli_value IS NOT NULL
  AND (
        (mjj_kbli_value > 82990 AND mjj_kbli_value < 85101) 
        OR (mjj_kbli_value > 85104 AND mjj_kbli_value < 85560) 
        OR (mjj_kbli_value > 85699 AND mjj_kbli_value < 86201) 
        OR (mjj_kbli_value > 63900 AND mjj_kbli_value < 64191) 
        OR (mjj_kbli_value > 64999 AND mjj_kbli_value < 66149) 
        OR (mjj_kbli_value > 33203 AND mjj_kbli_value < 35133) 
        OR (mjj_kbli_value > 28152 AND mjj_kbli_value < 30912) 
        OR (mjj_kbli_value > 10423 AND mjj_kbli_value < 10501) 
        OR (mjj_kbli_value = 85578 
            OR  mjj_kbli_value = 87301 
            OR  mjj_kbli_value = 87991 
            OR  mjj_kbli_value = 66292 
            OR  mjj_kbli_value = 64920 
            OR  mjj_kbli_value = 60311 
            OR  mjj_kbli_value = 49111 
            OR  mjj_kbli_value = 49119 
            OR  mjj_kbli_value = 49120 
            OR  mjj_kbli_value = 52212 
            OR  mjj_kbli_value = 35159 
            OR  mjj_kbli_value = 35401 
            OR  mjj_kbli_value = 35202 
            OR  mjj_kbli_value = 20292 
            OR  mjj_kbli_value = 91111 
            OR  mjj_kbli_value = 91121 
            OR  mjj_kbli_value = 91211 
            OR  mjj_kbli_value = 91300 
            OR  mjj_kbli_value = 91221 
            OR  mjj_kbli_value = 94110 
            OR  mjj_kbli_value = 94121 
            OR  mjj_kbli_value = 94200 
            OR  mjj_kbli_value = 94920)
        )
),

F_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',F2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_emprel_value IS NOT NULL
  AND sjj_emprel_value = 5 
  AND (sjj_kbli_value IS NOT NULL)
  AND (
        (sjj_kbli_value > 82990 AND sjj_kbli_value < 85101) 
        OR (sjj_kbli_value > 85104 AND sjj_kbli_value < 85560) 
        OR (sjj_kbli_value > 85699 AND sjj_kbli_value < 86201) 
        OR (sjj_kbli_value > 63900 AND sjj_kbli_value < 64191) 
        OR (sjj_kbli_value > 64999 AND sjj_kbli_value < 66149) 
        OR (sjj_kbli_value > 33203 AND sjj_kbli_value < 35133) 
        OR (sjj_kbli_value > 28152 AND sjj_kbli_value < 30912) 
        OR (sjj_kbli_value > 10423 AND sjj_kbli_value < 10501) 
        OR (sjj_kbli_value = 85578 
            OR sjj_kbli_value = 87301
            OR sjj_kbli_value = 87991 
            OR sjj_kbli_value = 66292
            OR sjj_kbli_value = 64920
            OR sjj_kbli_value = 60311 
            OR sjj_kbli_value = 49111 
            OR sjj_kbli_value = 49119 
            OR sjj_kbli_value = 49120 
            OR sjj_kbli_value = 52212 
            OR sjj_kbli_value = 35159 
            OR sjj_kbli_value = 35401 
            OR sjj_kbli_value = 35202 
            OR sjj_kbli_value = 20292 
            OR sjj_kbli_value = 91111 
            OR sjj_kbli_value = 91121 
            OR sjj_kbli_value = 91211 
            OR sjj_kbli_value = 91300 
            OR sjj_kbli_value = 91221 
            OR sjj_kbli_value = 94110 
            OR sjj_kbli_value = 94121 
            OR sjj_kbli_value = 94200 
            OR sjj_kbli_value = 94920)
            )
),

F_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',F3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_status_value IS NOT NULL
  AND mpk_status_value = 9 
  AND mpk_kbli_value IS NOT NULL
  AND (
        (mpk_kbli_value > 82990 AND mpk_kbli_value < 85101) 
        OR (mpk_kbli_value > 85104 AND mpk_kbli_value < 85560) 
        OR (mpk_kbli_value > 85699 AND mpk_kbli_value < 86201) 
        OR (mpk_kbli_value > 63900 AND mpk_kbli_value < 64191) 
        OR (mpk_kbli_value > 64999 AND mpk_kbli_value < 66149) 
        OR (mpk_kbli_value > 33203 AND mpk_kbli_value < 35133) 
        OR (mpk_kbli_value > 28152 AND mpk_kbli_value < 30912) 
        OR (mpk_kbli_value > 10423 AND mpk_kbli_value < 10501) 
        OR (mpk_kbli_value = 85578 
            OR mpk_kbli_value = 87301 
            OR mpk_kbli_value = 87991 
            OR mpk_kbli_value = 66292 
            OR mpk_kbli_value = 64920 
            OR mpk_kbli_value = 60311 
            OR mpk_kbli_value = 49111 
            OR mpk_kbli_value = 49119 
            OR mpk_kbli_value = 49120 
            OR mpk_kbli_value = 52212 
            OR mpk_kbli_value = 35159 
            OR mpk_kbli_value = 35401 
            OR mpk_kbli_value = 35202 
            OR mpk_kbli_value = 20292 
            OR mpk_kbli_value = 91111 
            OR mpk_kbli_value = 91121 
            OR mpk_kbli_value = 91211 
            OR mpk_kbli_value = 91300 
            OR mpk_kbli_value = 91221 
            OR mpk_kbli_value = 94110 
            OR mpk_kbli_value = 94121 
            OR mpk_kbli_value = 94200 
            OR mpk_kbli_value = 94920)
            )
),

G_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',G1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND mjj_kbli_value IS NOT NULL
  AND mjj_kbji_value = 2320 
  AND mjj_kbli_value <> 85321 
  AND mjj_kbli_value <> 85322 
  AND mjj_kbli_value <> 85323 
  AND mjj_kbli_value <> 85324 
  AND mjj_kbli_value <> 85401 
  AND mjj_kbli_value <> 85402 
  AND mjj_kbli_value <> 85403  
  AND mjj_kbli_value <> 85404
),

G_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',G2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND sjj_kbli_value IS NOT NULL
  AND sjj_kbji_value = 2320 
  AND sjj_kbli_value <> 85321 
  AND sjj_kbli_value <> 85322 
  AND sjj_kbli_value <> 85323 
  AND sjj_kbli_value <> 85324 
  AND sjj_kbli_value <> 85401 
  AND sjj_kbli_value <> 85402 
  AND sjj_kbli_value <> 85403 
  AND sjj_kbli_value <> 85404
),

G_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',G3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND mpk_kbli_value IS NOT NULL
  AND mpk_kbji_value = 2320 
  AND mpk_kbli_value <> 85321 
  AND mpk_kbli_value <> 85322 
  AND mpk_kbli_value <> 85323 
  AND mpk_kbli_value <> 85324 
  AND mpk_kbli_value <> 85401 
  AND mpk_kbli_value <> 85402 
  AND mpk_kbli_value <> 85403 
  AND mpk_kbli_value <> 85404
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
	LEFT JOIN E_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN E_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN E_anomali_3 as a3
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
	LEFT JOIN F_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN F_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN F_anomali_3 as a3
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
	LEFT JOIN G_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN G_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN G_anomali_3 as a3
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
