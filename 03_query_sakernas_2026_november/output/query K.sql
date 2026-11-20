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
       'K1'                                                                            AS kode_query
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
AND (SUBSTRING(mjj_kbji_value,1,4) >= 0211 AND SUBSTRING(mjj_kbji_value,1,4) <= 0215)
AND (dem_edl_value < 4 OR dem_age < 16)

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
       'K2'                                                                            AS kode_query
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
AND (SUBSTRING(sjj_kbji_value,1,4) >= 0211 AND SUBSTRING(sjj_kbji_value,1,4) <= 0215)
AND (dem_edl_value < 4 OR dem_age < 16)

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
       'K3'                                                                            AS kode_query
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
AND (SUBSTRING(mpk_kbji_value,1,4) >= 0211 AND SUBSTRING(mpk_kbji_value,1,4) <= 0215)
AND (dem_edl_value < 4 OR dem_age < 16)
