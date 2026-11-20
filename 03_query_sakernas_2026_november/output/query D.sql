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
       'D1'                                                                            AS kode_query
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
AND mjj_kbli_value IS NOT NULL
AND (mjj_kbli_value >= 84111 AND mjj_kbli_value <= 84300)
AND mjjemprel1_value IS NOT NULL
AND mjj_emprel_value IS NOT NULL
AND mig_ctz_value IS NOT NULL
AND mjj_rem_ta_value IS NOT NULL
AND mjj_p_uph_value IS NOT NULL
AND (mjjemprel1_value = 2 OR mjj_emprel_value = 2 OR mjj_emprel_value = 3 OR mjj_emprel_value = 5 OR mig_ctz_n_value = 2 OR mjj_rem_ta_value = 2 OR mjj_p_uph_value <> 1)

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
       'D2'                                                                            AS kode_query
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
AND sjj_kbli_value IS NOT NULL
AND (sjj_kbli_value >= 84111 AND sjj_kbli_value <= 84300)
AND sjjemprel1_value IS NOT NULL
AND sjj_emprel_value IS NOT NULL
AND mig_ctz_value IS NOT NULL
AND sjd_rem_ta_value IS NOT NULL
AND (sjjemprel1_value = 2 OR sjj_emprel_value = 2 OR sjj_emprel_value = 3 OR sjj_emprel_value = 5 OR mig_ctz_value = 2 OR sjd_rem_ta_value = 2)

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
       'D3'                                                                            AS kode_query
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
AND mpk_kbli_value IS NOT NULL
AND (mpk_kbli_value >= 84111 AND mpk_kbli_value <= 84300)
AND mpk_status_value IS NOT NULL
AND mig_ctz_value IS NOT NULL
AND (mpk_status_value = 1 OR mpk_status_value = 2 OR mpk_status_value = 3 OR mpk_status_value = 5 OR mpk_status_value = 6 OR mpk_status_value = 7 OR mpk_status_value = 9 OR mig_ctz_value = 2)
