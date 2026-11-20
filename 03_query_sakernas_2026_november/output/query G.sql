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
       'G1'                                                                            AS kode_query
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
AND mjj_kbji_value IS NOT NULL
AND mjj_kbli_value IS NOT NULL
AND SUBSTRING(mjj_kbji_value,1,4) = 2320
AND mjj_kbli_value <> 85321
AND mjj_kbli_value <> 85322
AND mjj_kbli_value <> 85323
AND mjj_kbli_value <> 85324
AND mjj_kbli_value <> 85401
AND mjj_kbli_value <> 85402
AND mjj_kbli_value <> 85403
AND mjj_kbli_value <> 85404

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
       'G2'                                                                            AS kode_query
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
AND sjj_kbji_value IS NOT NULL
AND sjj_kbli_value IS NOT NULL
AND SUBSTRING(sjj_kbji_value,1,4) = 2320
AND sjj_kbli_value <> 85321
AND sjj_kbli_value <> 85322
AND sjj_kbli_value <> 85323
AND sjj_kbli_value <> 85324
AND sjj_kbli_value <> 85401
AND sjj_kbli_value <> 85402
AND sjj_kbli_value <> 85403
AND sjj_kbli_value <> 85404

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
       'G3'                                                                            AS kode_query
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
AND mpk_kbji_value IS NOT NULL
AND mpk_kbli_value IS NOT NULL
AND SUBSTRING(mpk_kbji_value,1,4) = 2320
AND mpk_kbli_value <> 85321
AND mpk_kbli_value <> 85322
AND mpk_kbli_value <> 85323
AND mpk_kbli_value <> 85324
AND mpk_kbli_value <> 85401
AND mpk_kbli_value <> 85402
AND mpk_kbli_value <> 85403
AND mpk_kbli_value <> 85404
