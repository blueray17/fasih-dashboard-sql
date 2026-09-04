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
AND mjc_contra_value<=2
AND mjc_conop_value=3
AND mie_soc_a_value=2

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
AND mjc_contra_value<=2
AND (mjc_conop_value=1 or mjc_conop_value=3)
AND mie_soc_b_value=2

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
AND mjc_contra_value<=2
AND mjc_conop_value=3
AND mie_soc_c_value =2

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
AND mjc_contra_value<=2
AND mjc_conop_value=3
AND mie_soc_d_value in (2,3)

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
AND mjc_contra_value<=2
AND mjc_conop_value=3
AND mie_soc_e_value in (2,97)

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
AND mjc_contra_value<=2
AND mjc_conop_value=3
AND mie_soc_g_value=2

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
AND mjc_contra_value<=2
AND mjc_conop_value=3
AND mie_soc_h_value=2

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
AND mjc_contra_value<=2
AND mjc_conop_value=3
AND mie_soc_i_value=2

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
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND SJB_TEXT_value=2
AND MJJ_KBLI_value>=05100
and (AGF_CHK_A_value=1 or AGF_CHK_B_value=1)

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
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
AND DEM_AGE>5
AND SJB_TEXT_value=2
AND (MJJ_KBLI_value>=01100 and mjj_kbli_value<=03300)
and (AGF_CHK_A_value=2 AND AGF_CHK_B_value=2)

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
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5 AND MJJ_EMPREL_value=5
AND ((MJJ_KBLI_value>82990 AND MJJ_KBLI_value<85510)
OR (MJJ_KBLI_value>85500 AND MJJ_KBLI_value<86105)
OR (MJJ_KBLI_value>63900 AND MJJ_KBLI_value<64191)
OR (MJJ_KBLI_value>64999 AND MJJ_KBLI_value<66149)
OR (MJJ_KBLI_value>33203 AND MJJ_KBLI_value <35129)
OR (MJJ_KBLI_value>28160 AND MJJ_KBLI_value <30111)
OR (MJJ_KBLI_value>30120 AND MJJ_KBLI_value <30912)
OR (MJJ_KBLI_value>10423 AND MJJ_KBLI_value<10501)
OR MJJ_KBLI_value=85520 OR MJJ_KBLI_value=85578
OR MJJ_KBLI_value=86109 OR MJJ_KBLI_value=87301
OR MJJ_KBLI_value=87991 OR MJJ_KBLI_value=66116
OR MJJ_KBLI_value=66292 OR MJJ_KBLI_value=65123
OR MJJ_KBLI_value=64920 OR MJJ_KBLI_value=66122
OR MJJ_KBLI_value=60311 OR MJJ_KBLI_value=49111
OR MJJ_KBLI_value=49119 OR MJJ_KBLI_value=49120
OR MJJ_KBLI_value=52212 OR MJJ_KBLI_value=35159
OR MJJ_KBLI_value=35401 OR MJJ_KBLI_value=35202
OR MJJ_KBLI_value=20292 OR MJJ_KBLI_value=91111
OR MJJ_KBLI_value=91121 OR MJJ_KBLI_value=91211
OR MJJ_KBLI_value=91300 or MJJ_KBLI_value=91221
OR MJJ_KBLI_value=94110 OR MJJ_KBLI_value=94121
OR MJJ_KBLI_value=94200 OR MJJ_KBLI_value=94920)

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
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5
and MJJ_EMPREL_value=5
and (MJJ_KBJI_value>=0111 and MJJ_KBJI_value<=4419)

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
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5 AND SJJ_EMPREL_value=5 AND ((SJJ_KBLI_value > 82990 AND SJJ_KBLI_value < 85510) OR (SJJ_KBLI_value > 85500 AND SJJ_KBLI_value <86105) OR (SJJ_KBLI_value>63900 AND SJJ_KBLI_value<64191) OR (SJJ_KBLI_value>64999 AND SJJ_KBLI_value<66149) OR (SJJ_KBLI_value>33203 AND SJJ_KBLI_value <35129) OR (SJJ_KBLI_value>28160 AND SJJ_KBLI_value <30111) OR (SJJ_KBLI_value>30120 AND SJJ_KBLI_value <30912) OR (SJJ_KBLI_value> 10423 AND SJJ_KBLI_value<10501) OR (SJJ_KBLI_value = 85520 OR SJJ_KBLI_value = 85578 OR SJJ_KBLI_value = 86109 OR SJJ_KBLI_value = 87301 OR SJJ_KBLI_value = 87991 OR SJJ_KBLI_value = 66116 OR SJJ_KBLI_value = 66292 OR SJJ_KBLI_value = 65123 OR SJJ_KBLI_value = 64920 OR SJJ_KBLI_value = 66122 OR SJJ_KBLI_value = 60311 OR SJJ_KBLI_value = 49111 OR SJJ_KBLI_value = 49119 OR SJJ_KBLI_value = 49120 OR SJJ_KBLI_value = 52212 OR SJJ_KBLI_value = 35159 OR SJJ_KBLI_value = 35401 OR SJJ_KBLI_value = 35202 OR SJJ_KBLI_value = 20292 OR SJJ_KBLI_value = 91111 OR SJJ_KBLI_value = 91121 OR SJJ_KBLI_value = 91211 OR SJJ_KBLI_value = 91300 OR SJJ_KBLI_value = 91221 OR SJJ_KBLI_value = 94110 OR SJJ_KBLI_value = 94121 OR SJJ_KBLI_value = 94200 OR SJJ_KBLI_value = 94920))

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
       'PROV54'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1 and (DEM_AGE>=5 and SJJ_EMPREL_value=5 and (SJJ_KBJI_value>=0111 and SJJ_KBJI_value<=4419))

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
       'PROV55'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5 and SJJ_EMPREL_value=5 and (SJJ_KBJI_value>=0111 and SJJ_KBJI_value<=4419)

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
       'PROV56'                                                                            AS kode_query
FROM tok_3fd42e0e.art_roster art
         LEFT JOIN tok_3fd42e0e.root_table root
                   ON root.assignment_id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.base_table_assignment base
                   ON base.id = art.assignment_id
         LEFT JOIN tok_3fd42e0e.petugas p
                   ON p.assignment_id = root.assignment_id
WHERE base.is_active = 1
and DEM_AGE>=5 and MPK_STATUS_value=9 and (MPK_KBJI_value>=0111 and MPK_KBJI_value<=4419);
