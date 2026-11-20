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
       'A1'                                                                            AS kode_query
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
AND (mjj_kbli_value = 59111 OR mjj_kbli_value = 59121 OR mjj_kbli_value = 59131 OR mjj_kbli_value = 60311 OR (mjj_kbli_value >= 84111 AND mjj_kbli_value <= 84300) OR mjj_kbli_value = 85101 OR mjj_kbli_value = 85201 OR mjj_kbli_value = 85311 OR mjj_kbli_value = 85315 OR mjj_kbli_value = 85321 OR mjj_kbli_value = 85401 OR mjj_kbli_value = 85403 OR mjj_kbli_value = 85550 OR mjj_kbli_value = 85560 OR mjj_kbli_value = 86101 OR mjj_kbli_value = 86102 OR mjj_kbli_value = 86104 OR mjj_kbli_value = 87101 OR mjj_kbli_value = 87201 OR mjj_kbli_value = 87301 OR mjj_kbli_value = 88101 OR mjj_kbli_value = 88901 OR mjj_kbli_value = 91111 OR mjj_kbli_value = 91121 OR mjj_kbli_value = 91211 OR mjj_kbli_value = 91221 )
AND mjj_emprel_value IS NOT NULL
AND mju_ins_value IS NOT NULL
AND (mjj_emprel_value = 2 OR mjj_emprel_value = 3 OR mju_ins_value <> 1)

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
       'A2'                                                                            AS kode_query
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
AND (sjj_kbli_value = 59111 OR sjj_kbli_value = 59121 OR sjj_kbli_value = 59131 OR sjj_kbli_value = 60311 OR (sjj_kbli_value >= 84111 AND sjj_kbli_value <= 84300) OR sjj_kbli_value = 85101 OR sjj_kbli_value = 85201 OR sjj_kbli_value = 85311 OR sjj_kbli_value = 85315 OR sjj_kbli_value = 85321 OR sjj_kbli_value = 85401 OR sjj_kbli_value = 85403 OR sjj_kbli_value = 85550 OR sjj_kbli_value = 85560 OR sjj_kbli_value = 86101 OR sjj_kbli_value = 86102 OR sjj_kbli_value = 86104 OR sjj_kbli_value = 87101 OR sjj_kbli_value = 87201 OR sjj_kbli_value = 87301 OR sjj_kbli_value = 88101 OR sjj_kbli_value = 88901 OR sjj_kbli_value = 91111 OR sjj_kbli_value = 91121 OR sjj_kbli_value = 91211 OR sjj_kbli_value = 91221)
AND sjj_emprel_value IS NOT NULL
AND (sjj_emprel_value = 2 OR sjj_emprel_value = 3)

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
       'A3'                                                                            AS kode_query
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
AND (mpk_kbli_value = 59111 OR mpk_kbli_value = 59121 OR mpk_kbli_value = 59131 OR mpk_kbli_value = 60311 OR (mpk_kbli_value >=84111 AND mpk_kbli_value <=84300) OR mpk_kbli_value = 85101 OR mpk_kbli_value = 85201 OR mpk_kbli_value = 85311 OR mpk_kbli_value = 85315 OR mpk_kbli_value = 85321 OR mpk_kbli_value = 85401 OR mpk_kbli_value = 85403 OR mpk_kbli_value = 85550 OR mpk_kbli_value = 85560 OR mpk_kbli_value = 86101 OR mpk_kbli_value = 86102 OR mpk_kbli_value = 86104 OR mpk_kbli_value = 87101 OR mpk_kbli_value = 87201 OR mpk_kbli_value = 87301 OR mpk_kbli_value = 88101 OR mpk_kbli_value = 88901 OR mpk_kbli_value = 91111 OR mpk_kbli_value = 91121 OR mpk_kbli_value = 91211 OR mpk_kbli_value = 91221)
AND mpk_status_value IS NOT NULL
AND (mpk_status_value = 1 OR mpk_status_value = 2 OR mpk_status_value = 3 OR mpk_status_value = 7)
