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
       'I1'                                                                            AS kode_query
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
AND mjjemprel1_value IS NOT NULL
AND mjj_kbji_value IS NOT NULL
AND mjj_kbli_value IS NOT NULL
AND mju_ins_value IS NOT NULL
AND (SUBSTRING(mjj_kbji_value,1,4) >= 0111 AND SUBSTRING(mjj_kbji_value,1,4) <= 0315)
AND ( (mjj_kbli_value < 84221 OR mjj_kbli_value > 84232) OR mjjemprel1_value <> 1 OR mju_ins_value <> 1 )

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
       'I2'                                                                            AS kode_query
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
AND sjjemprel1_value IS NOT NULL
AND sjj_kbli_value IS NOT NULL
AND sjj_kbji_value IS NOT NULL
AND (SUBSTRING(sjj_kbji_value,1,4) >= 0111 AND SUBSTRING(sjj_kbji_value,1,4) <= 0315)
AND ((sjj_kbli_value < 84221 OR sjj_kbli_value > 84232) OR sjjemprel1_value <> 1 )

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
       'I3'                                                                            AS kode_query
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
AND mpk_status_value IS NOT NULL
AND mpk_kbli_value IS NOT NULL
AND mpk_kbji_value IS NOT NULL
AND (SUBSTRING(mpk_kbji_value,1,4) >= 0111 AND SUBSTRING(mpk_kbji_value,1,4) <= 0315)
AND ((mpk_kbli_value < 84221 OR mpk_kbli_value > 84232) OR mpk_status_value <> 4 )
