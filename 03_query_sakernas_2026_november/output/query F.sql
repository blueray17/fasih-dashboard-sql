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
       'F1'                                                                            AS kode_query
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
AND mjj_emprel_value IS NOT NULL
AND mjj_emprel_value = 5
AND mjj_kbli_value IS NOT NULL
AND ( (mjj_kbli_value > 82990 AND mjj_kbli_value < 85101) OR (mjj_kbli_value > 85104 AND mjj_kbli_value < 85560) OR (mjj_kbli_value > 85699 AND mjj_kbli_value < 86201) OR (mjj_kbli_value > 63900 AND mjj_kbli_value < 64191) OR (mjj_kbli_value > 64999 AND mjj_kbli_value < 66149) OR (mjj_kbli_value > 33203 AND mjj_kbli_value < 35133) OR (mjj_kbli_value > 28152 AND mjj_kbli_value < 30912) OR (mjj_kbli_value > 10423 AND mjj_kbli_value < 10501) OR (mjj_kbli_value = 85578 OR mjj_kbli_value = 87301 OR mjj_kbli_value = 87991 OR mjj_kbli_value = 66292 OR mjj_kbli_value = 64920 OR mjj_kbli_value = 60311 OR mjj_kbli_value = 49111 OR mjj_kbli_value = 49119 OR mjj_kbli_value = 49120 OR mjj_kbli_value = 52212 OR mjj_kbli_value = 35159 OR mjj_kbli_value = 35401 OR mjj_kbli_value = 35202 OR mjj_kbli_value = 20292 OR mjj_kbli_value = 91111 OR mjj_kbli_value = 91121 OR mjj_kbli_value = 91211 OR mjj_kbli_value = 91300 OR mjj_kbli_value = 91221 OR mjj_kbli_value = 94110 OR mjj_kbli_value = 94121 OR mjj_kbli_value = 94200 OR mjj_kbli_value = 94920) )

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
       'F2'                                                                            AS kode_query
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
AND sjj_emprel_value IS NOT NULL
AND sjj_emprel_value = 5
AND (sjj_kbli_value IS NOT NULL)
AND ( (sjj_kbli_value > 82990 AND sjj_kbli_value < 85101) OR (sjj_kbli_value > 85104 AND sjj_kbli_value < 85560) OR (sjj_kbli_value > 85699 AND sjj_kbli_value < 86201) OR (sjj_kbli_value > 63900 AND sjj_kbli_value < 64191) OR (sjj_kbli_value > 64999 AND sjj_kbli_value < 66149) OR (sjj_kbli_value > 33203 AND sjj_kbli_value < 35133) OR (sjj_kbli_value > 28152 AND sjj_kbli_value < 30912) OR (sjj_kbli_value > 10423 AND sjj_kbli_value < 10501) OR (sjj_kbli_value = 85578 OR sjj_kbli_value = 87301 OR sjj_kbli_value = 87991 OR sjj_kbli_value = 66292 OR sjj_kbli_value = 64920 OR sjj_kbli_value = 60311 OR sjj_kbli_value = 49111 OR sjj_kbli_value = 49119 OR sjj_kbli_value = 49120 OR sjj_kbli_value = 52212 OR sjj_kbli_value = 35159 OR sjj_kbli_value = 35401 OR sjj_kbli_value = 35202 OR sjj_kbli_value = 20292 OR sjj_kbli_value = 91111 OR sjj_kbli_value = 91121 OR sjj_kbli_value = 91211 OR sjj_kbli_value = 91300 OR sjj_kbli_value = 91221 OR sjj_kbli_value = 94110 OR sjj_kbli_value = 94121 OR sjj_kbli_value = 94200 OR sjj_kbli_value = 94920) )

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
       'F3'                                                                            AS kode_query
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
AND mpk_status_value = 9
AND mpk_kbli_value IS NOT NULL
AND ( (mpk_kbli_value > 82990 AND mpk_kbli_value < 85101) OR (mpk_kbli_value > 85104 AND mpk_kbli_value < 85560) OR (mpk_kbli_value > 85699 AND mpk_kbli_value < 86201) OR (mpk_kbli_value > 63900 AND mpk_kbli_value < 64191) OR (mpk_kbli_value > 64999 AND mpk_kbli_value < 66149) OR (mpk_kbli_value > 33203 AND mpk_kbli_value < 35133) OR (mpk_kbli_value > 28152 AND mpk_kbli_value < 30912) OR (mpk_kbli_value > 10423 AND mpk_kbli_value < 10501) OR (mpk_kbli_value = 85578 OR mpk_kbli_value = 87301 OR mpk_kbli_value = 87991 OR mpk_kbli_value = 66292 OR mpk_kbli_value = 64920 OR mpk_kbli_value = 60311 OR mpk_kbli_value = 49111 OR mpk_kbli_value = 49119 OR mpk_kbli_value = 49120 OR mpk_kbli_value = 52212 OR mpk_kbli_value = 35159 OR mpk_kbli_value = 35401 OR mpk_kbli_value = 35202 OR mpk_kbli_value = 20292 OR mpk_kbli_value = 91111 OR mpk_kbli_value = 91121 OR mpk_kbli_value = 91211 OR mpk_kbli_value = 91300 OR mpk_kbli_value = 91221 OR mpk_kbli_value = 94110 OR mpk_kbli_value = 94121 OR mpk_kbli_value = 94200 OR mpk_kbli_value = 94920) )
