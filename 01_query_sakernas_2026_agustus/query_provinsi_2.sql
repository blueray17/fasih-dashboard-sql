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
       'PROV18'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND dem_age >= 75
AND atw_pay_value = 1

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
       'PROV19'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND dem_age >= 5
AND (wkt_uss /
     NULLIF(
        (CASE WHEN wkt_sen_s IS NOT NULL AND wkt_sen_s <> 0 THEN 1 ELSE 0 END) +
        (CASE WHEN wkt_sel_s IS NOT NULL AND wkt_sel_s <> 0 THEN 1 ELSE 0 END) +
        (CASE WHEN wkt_rab_s IS NOT NULL AND wkt_rab_s <> 0 THEN 1 ELSE 0 END) +
        (CASE WHEN wkt_kam_s IS NOT NULL AND wkt_kam_s <> 0 THEN 1 ELSE 0 END) +
        (CASE WHEN wkt_jum_s IS NOT NULL AND wkt_jum_s <> 0 THEN 1 ELSE 0 END) +
        (CASE WHEN wkt_sab_s IS NOT NULL AND wkt_sab_s <> 0 THEN 1 ELSE 0 END) +
        (CASE WHEN wkt_mng_s IS NOT NULL AND wkt_mng_s <> 0 THEN 1 ELSE 0 END),
        0
     )) >= 15

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
       'PROV21'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND ((dem_age>=15 and mjj_mult_value is NULL AND (srh_kerja_value=1 or srh_usaha_value=1))
OR (dem_age>=15 AND mjj_mult_value is NULL AND (srh_kerja_value=2 AND srh_usaha_value=2) AND srh_alsn_value <=3))

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
       'PROV24'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND dem_age >= 5
AND (mjj_upah_u + mjj_upah_b + MJJ_PLUS_U+MJJ_PLUS_B< 100000)

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
       'PROV25'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND dem_age>=5
AND MJJ_LABA_U+MJJ_LABA_B=0
and (MJJ_EMPREL_value = 2 or (MJJ_EMPREL_value =3 and MJJ_CFWCHK_value <=2))

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
       'PROV26'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND dem_age>=5
AND mjj_rem_ta_value=1
AND (MJJ_UPAH_U + MJJ_PLUS_U=0)

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
       'PROV27'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND dem_age>=5
AND mjj_rem_tc_value=1
AND (MJJ_UPAH_B + MJJ_PLUS_B=0)

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
       'PROV28'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND DEM_AGE<=15
AND mjjemprel2_value=3

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
       'PROV29'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND mju_ins_value<=3
AND mjj_emprel_value in (2,3,5)

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
       'PROV31'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND mju_ins_value<=2
AND mjj_p_uph_value >1

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
       'PROV32'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND mju_ins_value<=2
AND mjj_emprel_value=1
AND mjc_contra_value=3

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
       'PROV33'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND mju_ins_value<=3
AND mjj_emprel_value=1
AND mjc_contra_value=3;
