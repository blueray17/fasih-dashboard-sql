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
       'PROV34'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND CAST(mjc_conop_value AS VARCHAR(100)) = '3'
AND CAST(mie_soc_a_value AS VARCHAR(100)) = '2'

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
       'PROV35'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND (CAST(mjc_conop_value AS VARCHAR(100)) = '1' or CAST(mjc_conop_value AS VARCHAR(100)) = '3')
AND CAST(mie_soc_b_value AS VARCHAR(100)) = '2'

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
       'PROV36'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND CAST(mjc_conop_value AS VARCHAR(100)) = '3'
AND CAST(mie_soc_c_value AS VARCHAR(100)) = '2'

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
       'PROV37'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND CAST(mjc_conop_value AS VARCHAR(100)) = '3'
AND CAST(mie_soc_d_value AS VARCHAR(100)) IN ('2', '3')

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
       'PROV38'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND CAST(mjc_conop_value AS VARCHAR(100)) = '3'
AND CAST(mie_soc_e_value AS VARCHAR(100)) IN ('2', '97')

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
       'PROV39'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND CAST(mjc_conop_value AS VARCHAR(100)) = '3'
AND CAST(mie_soc_g_value AS VARCHAR(100)) = '2'

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
       'PROV40'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND CAST(mjc_conop_value AS VARCHAR(100)) = '3'
AND CAST(mie_soc_h_value AS VARCHAR(100)) = '2'

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
       'PROV41'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(mju_ins_value AS VARCHAR(100)) <= '2'
AND CAST(mjj_emprel_value AS VARCHAR(100)) = '1'
AND CAST(mjc_contra_value AS VARCHAR(100)) <= '2'
AND CAST(mjc_conop_value AS VARCHAR(100)) = '3'
AND CAST(mie_soc_i_value AS VARCHAR(100)) = '2'

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
       'PROV46'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(SJB_TEXT_value AS VARCHAR(100)) = '2'
AND CAST(MJJ_KBLI_value AS VARCHAR(100)) >= '05100'
and (CAST(AGF_CHK_A_value AS VARCHAR(100)) = '1' or CAST(AGF_CHK_B_value AS VARCHAR(100)) = '1')

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
       'PROV47'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND CAST(SJB_TEXT_value AS VARCHAR(100)) = '2'
AND (CAST(MJJ_KBLI_value AS VARCHAR(100)) >= '01100' and CAST(MJJ_KBLI_value AS VARCHAR(100)) <= '03300')
and (CAST(AGF_CHK_A_value AS VARCHAR(100)) = '2' AND CAST(AGF_CHK_B_value AS VARCHAR(100)) = '2')

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
       'PROV51'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5 AND CAST(mjj_emprel_value AS VARCHAR(100)) = '5'
AND ((CAST(MJJ_KBLI_value AS VARCHAR(100)) > '82990' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '85510')
OR (CAST(MJJ_KBLI_value AS VARCHAR(100)) > '85500' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '86105')
OR (CAST(MJJ_KBLI_value AS VARCHAR(100)) > '63900' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '64191')
OR (CAST(MJJ_KBLI_value AS VARCHAR(100)) > '64999' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '66149')
OR (CAST(MJJ_KBLI_value AS VARCHAR(100)) > '33203' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '35129')
OR (CAST(MJJ_KBLI_value AS VARCHAR(100)) > '28160' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '30111')
OR (CAST(MJJ_KBLI_value AS VARCHAR(100)) > '30120' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '30912')
OR (CAST(MJJ_KBLI_value AS VARCHAR(100)) > '10423' AND CAST(MJJ_KBLI_value AS VARCHAR(100)) < '10501')
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '85520' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '85578'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '86109' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '87301'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '87991' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '66116'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '66292' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '65123'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '64920' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '66122'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '60311' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '49111'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '49119' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '49120'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '52212' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '35159'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '35401' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '35202'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '20292' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '91111'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '91121' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '91211'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '91300' or CAST(MJJ_KBLI_value AS VARCHAR(100)) = '91221'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '94110' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '94121'
OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '94200' OR CAST(MJJ_KBLI_value AS VARCHAR(100)) = '94920')

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
       'PROV52'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5
and CAST(mjj_emprel_value AS VARCHAR(100)) = '5'
and (CAST(MJJ_KBJI_value AS VARCHAR(100)) >= '0111' and CAST(MJJ_KBJI_value AS VARCHAR(100)) <= '4419')

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
       'PROV53'                                                                            AS kode_query
FROM tle_c7706a44.art_roster art
         LEFT JOIN tle_c7706a44.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tle_c7706a44.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tle_c7706a44.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5 AND CAST(SJJ_EMPREL_value AS VARCHAR(100)) = '5' AND ((CAST(SJJ_KBLI_value AS VARCHAR(100)) > '82990' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '85510') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) > '85500' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '86105') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) > '63900' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '64191') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) > '64999' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '66149') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) > '33203' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '35129') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) > '28160' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '30111') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) > '30120' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '30912') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) > '10423' AND CAST(SJJ_KBLI_value AS VARCHAR(100)) < '10501') OR (CAST(SJJ_KBLI_value AS VARCHAR(100)) = '85520' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '85578' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '86109' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '87301' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '87991' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '66116' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '66292' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '65123' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '64920' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '66122' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '60311' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '49111' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '49119' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '49120' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '52212' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '35159' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '35401' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '35202' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '20292' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '91111' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '91121' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '91211' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '91300' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '91221' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '94110' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '94121' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '94200' OR CAST(SJJ_KBLI_value AS VARCHAR(100)) = '94920'))

-- UNION ALL

-- SELECT art.assignment_id,
--       art.level_2_code                                                                    AS KODE_KAB,
--       art.level_6_full_code                                                                    AS SUBSLS,
--       root.nks                                                                            AS NKS,
--       root.no_dsrt                                                                        AS DSRT,
--       root.namaKRT,
--       art.ppno                                                                            AS NO_ART,
--       art.dem_name                                                                        AS NAMA_ART,
--       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
--       root.catatan,
--       'PROV54'                                                                            AS kode_query
-- FROM tle_c7706a44.art_roster art
--         LEFT JOIN tle_c7706a44.root_table root
--                   ON root.assignment_id = art.assignment_id
--         LEFT JOIN tle_c7706a44.base_table_assignment base
--                   ON base.id = art.assignment_id
--         LEFT JOIN tle_c7706a44.petugas p
--                   ON p.assignment_id = root.assignment_id
-- WHERE base.is_active = 1 and (DEM_AGE>=5 and CAST(SJJ_EMPREL_value AS VARCHAR(100)) = '5' and (CAST(SJJ_KBJI_value AS VARCHAR(100)) >= '0111' and CAST(SJJ_KBJI_value AS VARCHAR(100)) <= '4419'))

-- UNION ALL

-- SELECT art.assignment_id,
--       art.level_2_code                                                                    AS KODE_KAB,
--       art.level_6_full_code                                                                    AS SUBSLS,
--       root.nks                                                                            AS NKS,
--       root.no_dsrt                                                                        AS DSRT,
--       root.namaKRT,
--       art.ppno                                                                            AS NO_ART,
--       art.dem_name                                                                        AS NAMA_ART,
--       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
--       root.catatan,
--       'PROV55'                                                                            AS kode_query
-- FROM tle_c7706a44.art_roster art
--         LEFT JOIN tle_c7706a44.root_table root
--                   ON root.assignment_id = art.assignment_id
--         LEFT JOIN tle_c7706a44.base_table_assignment base
--                   ON base.id = art.assignment_id
--         LEFT JOIN tle_c7706a44.petugas p
--                   ON p.assignment_id = root.assignment_id
-- WHERE base.is_active = 1
-- and DEM_AGE>=5 and CAST(SJJ_EMPREL_value AS VARCHAR(100)) = '5' and (CAST(SJJ_KBJI_value AS VARCHAR(100)) >= '0111' and CAST(SJJ_KBJI_value AS VARCHAR(100)) <= '4419')

-- UNION ALL

-- SELECT art.assignment_id,
--       art.level_2_code                                                                    AS KODE_KAB,
--       art.level_6_full_code                                                                    AS SUBSLS,
--       root.nks                                                                            AS NKS,
--       root.no_dsrt                                                                        AS DSRT,
--       root.namaKRT,
--       art.ppno                                                                            AS NO_ART,
--       art.dem_name                                                                        AS NAMA_ART,
--       CONCAT('p.PML: ',p.PML,'; p.PPL: ',p.PPL,'; Status: ',base.assignment_status_alias) AS petugas,
--       root.catatan,
--       'PROV56'                                                                            AS kode_query
-- FROM tle_c7706a44.art_roster art
--         LEFT JOIN tle_c7706a44.root_table root
--                   ON root.assignment_id = art.assignment_id
--         LEFT JOIN tle_c7706a44.base_table_assignment base
--                   ON base.id = art.assignment_id
--         LEFT JOIN tle_c7706a44.petugas p
--                   ON p.assignment_id = root.assignment_id
-- WHERE base.is_active = 1
-- and DEM_AGE>=5 and CAST(MPK_STATUS_value AS VARCHAR(100)) = '9' and (CAST(MPK_KBJI_value AS VARCHAR(100)) >= '0111' and CAST(MPK_KBJI_value AS VARCHAR(100)) <= '4419');
