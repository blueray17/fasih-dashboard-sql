-- Bagian 1 dari 7 — kelompok cek: A, B
-- Keterangan lengkap daftar anomali dapat dilihat di sini : http://s.bps.go.id/anomali_sakernas_ags26

WITH

A_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',A1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbli_value IS NOT NULL
  AND (mjj_kbli_value
        = 59111 OR mjj_kbli_value
        = 59121 OR mjj_kbli_value
        = 59131 OR mjj_kbli_value
        = 60311 OR (mjj_kbli_value
                    >= 84111 AND mjj_kbli_value
                    <= 84300) OR mjj_kbli_value
	      = 85101 OR mjj_kbli_value 
	      = 85201 OR mjj_kbli_value
	      = 85311 OR mjj_kbli_value
	      = 85315 OR mjj_kbli_value
	      = 85321 OR mjj_kbli_value
	      = 85401 OR mjj_kbli_value
	      = 85403 OR mjj_kbli_value
	      = 85550 OR mjj_kbli_value
	      = 85560 OR mjj_kbli_value
	      = 86101 OR mjj_kbli_value
	      = 86102 OR mjj_kbli_value
	      = 86104 OR mjj_kbli_value
	      = 87101 OR mjj_kbli_value
	      = 87201 OR mjj_kbli_value
	      = 87301 OR mjj_kbli_value
	      = 88101 OR mjj_kbli_value
	      = 88901 OR mjj_kbli_value
	      = 91111 OR mjj_kbli_value
	      = 91121 OR mjj_kbli_value
	      = 91211 OR mjj_kbli_value
	      = 91221 )
  AND mjj_emprel_value IS NOT NULL
  AND mju_ins_value IS NOT NULL
  AND (mjj_emprel_value
           = 2 OR mjj_emprel_value
           = 3 OR mju_ins_value
           <> 1)
),

A_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',A2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbli_value IS NOT NULL
  AND (sjj_kbli_value
		= 59111 OR sjj_kbli_value 
		= 59121 OR sjj_kbli_value
		= 59131 OR sjj_kbli_value
		= 60311 OR (sjj_kbli_value
				>= 84111 AND sjj_kbli_value
				<= 84300) OR sjj_kbli_value
		= 85101 OR sjj_kbli_value
		= 85201 OR sjj_kbli_value
		= 85311 OR sjj_kbli_value
		= 85315 OR sjj_kbli_value
		= 85321 OR sjj_kbli_value
		= 85401 OR sjj_kbli_value
		= 85403 OR sjj_kbli_value
		= 85550 OR sjj_kbli_value
		= 85560 OR sjj_kbli_value
		= 86101 OR sjj_kbli_value
		= 86102 OR sjj_kbli_value
		= 86104 OR sjj_kbli_value
		= 87101 OR sjj_kbli_value
		= 87201 OR sjj_kbli_value
		= 87301 OR sjj_kbli_value
		= 88101 OR sjj_kbli_value
		= 88901 OR sjj_kbli_value
		= 91111 OR sjj_kbli_value
		= 91121 OR sjj_kbli_value
		= 91211 OR sjj_kbli_value
		= 91221) 
AND sjj_emprel_value IS NOT NULL
AND (sjj_emprel_value
           = 2 OR sjj_emprel_value
           = 3)
),

A_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',A3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbli_value IS NOT NULL
  AND (mpk_kbli_value
		= 59111 OR mpk_kbli_value
		= 59121 OR mpk_kbli_value
		= 59131 OR mpk_kbli_value
		= 60311 OR (mpk_kbli_value
					>=84111 AND mpk_kbli_value
					<=84300) OR mpk_kbli_value
		= 85101 OR mpk_kbli_value
		= 85201 OR mpk_kbli_value
		= 85311 OR mpk_kbli_value
		= 85315 OR mpk_kbli_value
		= 85321 OR mpk_kbli_value
		= 85401 OR mpk_kbli_value
		= 85403 OR mpk_kbli_value
		= 85550 OR mpk_kbli_value
		= 85560 OR mpk_kbli_value
		= 86101 OR mpk_kbli_value
		= 86102 OR mpk_kbli_value
		= 86104 OR mpk_kbli_value
		= 87101 OR mpk_kbli_value
		= 87201 OR mpk_kbli_value
		= 87301 OR mpk_kbli_value
		= 88101 OR mpk_kbli_value
		= 88901 OR mpk_kbli_value
		= 91111 OR mpk_kbli_value
		= 91121 OR mpk_kbli_value
		= 91211 OR mpk_kbli_value
		= 91221)
AND mpk_status_value IS NOT NULL
AND (mpk_status_value
		= 1 OR mpk_status_value
		= 2 OR mpk_status_value
		= 3 OR mpk_status_value
		= 7)
),

B_anomali_1 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',B1' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mjj_kbji_value IS NOT NULL
  AND (mjj_kbji_value
    = 1111 OR mjj_kbji_value
    = 1112 OR mjj_kbji_value
    = 2141 OR mjj_kbji_value
    = 2142 OR mjj_kbji_value
    = 2143 OR mjj_kbji_value
    = 2144 OR mjj_kbji_value
    = 2145 OR mjj_kbji_value
    = 2146 OR mjj_kbji_value
    = 2149 OR mjj_kbji_value
    = 2151 OR mjj_kbji_value
    = 2152 OR mjj_kbji_value
    = 2153 OR mjj_kbji_value
    = 2161 OR mjj_kbji_value
    = 2162 OR mjj_kbji_value
    = 2163 OR mjj_kbji_value
    = 2211 OR mjj_kbji_value
    = 2212 OR mjj_kbji_value
    = 2250 OR mjj_kbji_value
    = 2261 OR mjj_kbji_value
    = 2262 OR mjj_kbji_value
    = 2263 OR mjj_kbji_value
    = 2264 OR mjj_kbji_value
    = 2265 OR mjj_kbji_value
    = 2266 OR mjj_kbji_value
    = 2267 OR mjj_kbji_value
    = 2310 OR mjj_kbji_value
    = 2330 OR mjj_kbji_value
    = 2411 OR mjj_kbji_value
    = 2611 OR mjj_kbji_value
    = 2612 OR mjj_kbji_value
    = 2619 OR mjj_kbji_value
    = 2631 OR mjj_kbji_value
    = 2632 OR mjj_kbji_value
    = 2634)
  AND dem_edl_value IS NOT NULL
  AND dem_edl_value < 8
),

B_anomali_2 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',B2' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND sjj_kbji_value IS NOT NULL
  AND (sjj_kbji_value
    = 1111 OR sjj_kbji_value
    = 1112 OR sjj_kbji_value
    = 2141 OR sjj_kbji_value
    = 2142 OR sjj_kbji_value
    = 2143 OR sjj_kbji_value
    = 2144 OR sjj_kbji_value
    = 2145 OR sjj_kbji_value
    = 2146 OR sjj_kbji_value
    = 2149 OR sjj_kbji_value
    = 2151 OR sjj_kbji_value
    = 2152 OR sjj_kbji_value
    = 2153 OR sjj_kbji_value
    = 2161 OR sjj_kbji_value
    = 2162 OR sjj_kbji_value
    = 2163 OR sjj_kbji_value
    = 2211 OR sjj_kbji_value
    = 2212 OR sjj_kbji_value
    = 2250 OR sjj_kbji_value
    = 2261 OR sjj_kbji_value
    = 2262 OR sjj_kbji_value
    = 2263 OR sjj_kbji_value
    = 2264 OR sjj_kbji_value
    = 2265 OR sjj_kbji_value
    = 2266 OR sjj_kbji_value
    = 2267 OR sjj_kbji_value
    = 2310 OR sjj_kbji_value
    = 2330 OR sjj_kbji_value
    = 2411 OR sjj_kbji_value
    = 2611 OR sjj_kbji_value
    = 2612 OR sjj_kbji_value
    = 2619 OR sjj_kbji_value
    = 2631 OR sjj_kbji_value
    = 2632 OR sjj_kbji_value
    = 2634) 
  AND dem_edl_value IS NOT NULL
  AND dem_edl_value < 8
),

B_anomali_3 AS (
 SELECT 
	root.assignment_id,
	root.nks,
        root.no_dsrt,
        art.ppno,
        art.dem_name,
	',B3' AS anomali
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id

WHERE base.is_active = 1
  AND dem_age >= 5
  AND mpk_kbji_value IS NOT NULL
  AND (mpk_kbji_value
    =1111 OR mpk_kbji_value
    =1112 OR mpk_kbji_value
    =2141 OR mpk_kbji_value
    =2142 OR mpk_kbji_value
    =2143 OR mpk_kbji_value
    =2144 OR mpk_kbji_value
    =2145 OR mpk_kbji_value
    =2146 OR mpk_kbji_value
    =2149 OR mpk_kbji_value
    =2151 OR mpk_kbji_value
    =2152 OR mpk_kbji_value
    =2153 OR mpk_kbji_value
    =2161 OR mpk_kbji_value
    =2162 OR mpk_kbji_value
    =2163 OR mpk_kbji_value
    =2211 OR mpk_kbji_value
    =2212 OR mpk_kbji_value
    =2250 OR mpk_kbji_value
    =2261 OR mpk_kbji_value
    =2262 OR mpk_kbji_value
    =2263 OR mpk_kbji_value
    =2264 OR mpk_kbji_value
    =2265 OR mpk_kbji_value
    =2266 OR mpk_kbji_value
    =2267 OR mpk_kbji_value
    =2310 OR mpk_kbji_value
    =2330 OR mpk_kbji_value
    =2411 OR mpk_kbji_value
    =2611 OR mpk_kbji_value
    =2612 OR mpk_kbji_value
    =2619 OR mpk_kbji_value
    =2631 OR mpk_kbji_value
    =2632 OR mpk_kbji_value
    =2634)
  AND dem_edl_value IS NOT NULL
  AND dem_edl_value < 8
)

SELECT 'A' AS kelompok_cek,
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
       CONCAT('mjj_kbli_value: ', mjj_kbli_value, '; ', 'mjj_emprel_value: ', mjj_emprel_value, '; ', 'mju_ins_value: ', mju_ins_value, '; ', 'sjj_kbli_value: ', sjj_kbli_value, '; ', 'sjj_emprel_value: ', sjj_emprel_value, '; ', 'mpk_kbli_value: ', mpk_kbli_value, '; ', 'mpk_status_value: ', mpk_status_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       art.assignment_id AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN A_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN A_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN A_anomali_3 as a3
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

SELECT 'B' AS kelompok_cek,
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
       CONCAT('mjj_kbji_value: ', mjj_kbji_value, '; ', 'sjj_kbji_value: ', sjj_kbji_value, '; ', 'mpk_kbji_value: ', mpk_kbji_value, '; ', 'dem_edl_value: ', dem_edl_value, '; ') AS detail_cek,
       CONCAT('PML: ',p.PML,'; PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       LTRIM( STUFF( CONCAT( a1.anomali, a2.anomali, a3.anomali ) ,1,1,'') ) AS anomali,
       root.catatan,
       art.assignment_id AS Link,
       root.survey_period_id

FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
	LEFT JOIN B_anomali_1 as a1
                   ON a1.assignment_id = root.assignment_id AND 
			  a1.nks = root.nks AND 
        		  a1.no_dsrt = root.no_dsrt AND 
        		  a1.ppno = art.ppno AND
        		  a1.dem_name = art.dem_name
	LEFT JOIN B_anomali_2 as a2
                   ON a2.assignment_id = root.assignment_id AND 
			  a2.nks = root.nks AND 
        		  a2.no_dsrt = root.no_dsrt AND 
        		  a2.ppno = art.ppno AND
        		  a2.dem_name = art.dem_name
	LEFT JOIN B_anomali_3 as a3
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
