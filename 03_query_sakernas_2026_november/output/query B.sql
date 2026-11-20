SELECT art.assignment_id,
       art.level_2_code                                                                    AS KODE_KAB,
       art.level_6_full_code                                                                    AS SUBSLS,
       root.nks                                                                            AS NKS,
       root.no_dsrt                                                                        AS DSRT,
       root.namaKRT,
       art.ppno                                                                            AS NO_ART,
       art.dem_name                                                                        AS NAMA_ART,
       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       root.catatan,
       'B1'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND (base.assignment_status_alias <> 'DRAFT' AND base.assignment_status_alias <> 'OPEN')
AND dem_age >= 5
AND SUBSTRING(mjj_kbji_value,1,4) IS NOT NULL
AND (SUBSTRING(mjj_kbji_value,1,4) = 1111 OR SUBSTRING(mjj_kbji_value,1,4) = 1112 OR SUBSTRING(mjj_kbji_value,1,4) = 2141 OR SUBSTRING(mjj_kbji_value,1,4) = 2142 OR SUBSTRING(mjj_kbji_value,1,4) = 2143 OR SUBSTRING(mjj_kbji_value,1,4) = 2144 OR SUBSTRING(mjj_kbji_value,1,4) = 2145 OR SUBSTRING(mjj_kbji_value,1,4) = 2146 OR SUBSTRING(mjj_kbji_value,1,4) = 2149 OR SUBSTRING(mjj_kbji_value,1,4) = 2151 OR SUBSTRING(mjj_kbji_value,1,4) = 2152 OR SUBSTRING(mjj_kbji_value,1,4) = 2153 OR SUBSTRING(mjj_kbji_value,1,4) = 2161 OR SUBSTRING(mjj_kbji_value,1,4) = 2162 OR SUBSTRING(mjj_kbji_value,1,4) = 2163 OR SUBSTRING(mjj_kbji_value,1,4) = 2211 OR SUBSTRING(mjj_kbji_value,1,4) = 2212 OR SUBSTRING(mjj_kbji_value,1,4) = 2250 OR SUBSTRING(mjj_kbji_value,1,4) = 2261 OR SUBSTRING(mjj_kbji_value,1,4) = 2262 OR SUBSTRING(mjj_kbji_value,1,4) = 2263 OR SUBSTRING(mjj_kbji_value,1,4) = 2264 OR SUBSTRING(mjj_kbji_value,1,4) = 2265 OR SUBSTRING(mjj_kbji_value,1,4) = 2266 OR SUBSTRING(mjj_kbji_value,1,4) = 2267 OR SUBSTRING(mjj_kbji_value,1,4) = 2310 OR SUBSTRING(mjj_kbji_value,1,4) = 2330 OR SUBSTRING(mjj_kbji_value,1,4) = 2411 OR SUBSTRING(mjj_kbji_value,1,4) = 2611 OR SUBSTRING(mjj_kbji_value,1,4) = 2612 OR SUBSTRING(mjj_kbji_value,1,4) = 2619 OR SUBSTRING(mjj_kbji_value,1,4) = 2631 OR SUBSTRING(mjj_kbji_value,1,4) = 2632 OR SUBSTRING(mjj_kbji_value,1,4) = 2634)
AND dem_edl_value IS NOT NULL
AND dem_edl_value < 8

UNION ALL

SELECT art.assignment_id,
       art.level_2_code                                                                    AS KODE_KAB,
       art.level_6_full_code                                                                    AS SUBSLS,
       root.nks                                                                            AS NKS,
       root.no_dsrt                                                                        AS DSRT,
       root.namaKRT,
       art.ppno                                                                            AS NO_ART,
       art.dem_name                                                                        AS NAMA_ART,
       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       root.catatan,
       'B2'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND (base.assignment_status_alias <> 'DRAFT' AND base.assignment_status_alias <> 'OPEN')
AND dem_age >= 5
AND SUBSTRING(sjj_kbji_value,1,4) IS NOT NULL
AND (SUBSTRING(sjj_kbji_value,1,4) = 1111 OR SUBSTRING(sjj_kbji_value,1,4) = 1112 OR SUBSTRING(sjj_kbji_value,1,4) = 2141 OR SUBSTRING(sjj_kbji_value,1,4) = 2142 OR SUBSTRING(sjj_kbji_value,1,4) = 2143 OR SUBSTRING(sjj_kbji_value,1,4) = 2144 OR SUBSTRING(sjj_kbji_value,1,4) = 2145 OR SUBSTRING(sjj_kbji_value,1,4) = 2146 OR SUBSTRING(sjj_kbji_value,1,4) = 2149 OR SUBSTRING(sjj_kbji_value,1,4) = 2151 OR SUBSTRING(sjj_kbji_value,1,4) = 2152 OR SUBSTRING(sjj_kbji_value,1,4) = 2153 OR SUBSTRING(sjj_kbji_value,1,4) = 2161 OR SUBSTRING(sjj_kbji_value,1,4) = 2162 OR SUBSTRING(sjj_kbji_value,1,4) = 2163 OR SUBSTRING(sjj_kbji_value,1,4) = 2211 OR SUBSTRING(sjj_kbji_value,1,4) = 2212 OR SUBSTRING(sjj_kbji_value,1,4) = 2250 OR SUBSTRING(sjj_kbji_value,1,4) = 2261 OR SUBSTRING(sjj_kbji_value,1,4) = 2262 OR SUBSTRING(sjj_kbji_value,1,4) = 2263 OR SUBSTRING(sjj_kbji_value,1,4) = 2264 OR SUBSTRING(sjj_kbji_value,1,4) = 2265 OR SUBSTRING(sjj_kbji_value,1,4) = 2266 OR SUBSTRING(sjj_kbji_value,1,4) = 2267 OR SUBSTRING(sjj_kbji_value,1,4) = 2310 OR SUBSTRING(sjj_kbji_value,1,4) = 2330 OR SUBSTRING(sjj_kbji_value,1,4) = 2411 OR SUBSTRING(sjj_kbji_value,1,4) = 2611 OR SUBSTRING(sjj_kbji_value,1,4) = 2612 OR SUBSTRING(sjj_kbji_value,1,4) = 2619 OR SUBSTRING(sjj_kbji_value,1,4) = 2631 OR SUBSTRING(sjj_kbji_value,1,4) = 2632 OR SUBSTRING(sjj_kbji_value,1,4) = 2634)
AND dem_edl_value IS NOT NULL
AND dem_edl_value < 8

UNION ALL

SELECT art.assignment_id,
       art.level_2_code                                                                    AS KODE_KAB,
       art.level_6_full_code                                                                    AS SUBSLS,
       root.nks                                                                            AS NKS,
       root.no_dsrt                                                                        AS DSRT,
       root.namaKRT,
       art.ppno                                                                            AS NO_ART,
       art.dem_name                                                                        AS NAMA_ART,
       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
       root.catatan,
       'B3'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND (base.assignment_status_alias <> 'DRAFT' AND base.assignment_status_alias <> 'OPEN')
AND dem_age >= 5
AND SUBSTRING(mpk_kbji_value,1,4) IS NOT NULL
AND (SUBSTRING(mpk_kbji_value,1,4) =1111 OR SUBSTRING(mpk_kbji_value,1,4) =1112 OR SUBSTRING(mpk_kbji_value,1,4) =2141 OR SUBSTRING(mpk_kbji_value,1,4) =2142 OR SUBSTRING(mpk_kbji_value,1,4) =2143 OR SUBSTRING(mpk_kbji_value,1,4) =2144 OR SUBSTRING(mpk_kbji_value,1,4) =2145 OR SUBSTRING(mpk_kbji_value,1,4) =2146 OR SUBSTRING(mpk_kbji_value,1,4) =2149 OR SUBSTRING(mpk_kbji_value,1,4) =2151 OR SUBSTRING(mpk_kbji_value,1,4) =2152 OR SUBSTRING(mpk_kbji_value,1,4) =2153 OR SUBSTRING(mpk_kbji_value,1,4) =2161 OR SUBSTRING(mpk_kbji_value,1,4) =2162 OR SUBSTRING(mpk_kbji_value,1,4) =2163 OR SUBSTRING(mpk_kbji_value,1,4) =2211 OR SUBSTRING(mpk_kbji_value,1,4) =2212 OR SUBSTRING(mpk_kbji_value,1,4) =2250 OR SUBSTRING(mpk_kbji_value,1,4) =2261 OR SUBSTRING(mpk_kbji_value,1,4) =2262 OR SUBSTRING(mpk_kbji_value,1,4) =2263 OR SUBSTRING(mpk_kbji_value,1,4) =2264 OR SUBSTRING(mpk_kbji_value,1,4) =2265 OR SUBSTRING(mpk_kbji_value,1,4) =2266 OR SUBSTRING(mpk_kbji_value,1,4) =2267 OR SUBSTRING(mpk_kbji_value,1,4) =2310 OR SUBSTRING(mpk_kbji_value,1,4) =2330 OR SUBSTRING(mpk_kbji_value,1,4) =2411 OR SUBSTRING(mpk_kbji_value,1,4) =2611 OR SUBSTRING(mpk_kbji_value,1,4) =2612 OR SUBSTRING(mpk_kbji_value,1,4) =2619 OR SUBSTRING(mpk_kbji_value,1,4) =2631 OR SUBSTRING(mpk_kbji_value,1,4) =2632 OR SUBSTRING(mpk_kbji_value,1,4) =2634)
AND dem_edl_value IS NOT NULL
AND dem_edl_value < 8
