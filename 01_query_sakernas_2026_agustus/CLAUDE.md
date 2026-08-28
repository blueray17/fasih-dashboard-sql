# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This project contains T-SQL anomaly validation queries for **SAKERNAS Agustus 2026** (Survey Nasional Ekonomi dan Tenaga Kerja), conducted by BPS (Badan Pusat Statistik). The queries validate field data against business rules to identify data quality issues before final submission.

## Directory Structure

The project contains 7 SQL files, each covering a specific group of anomaly checks:

| File | Groups | Description |
|------|--------|-------------|
| `gabungan_sakernas_anomali_part1_AB.sql` | A, B | Employment status type mismatches & education-occupation inconsistencies |
| `gabungan_sakernas_anomali_part2_CD.sql` | C, D | Missing required fields & detailed employment consistency checks |
| `gabungan_sakernas_anomali_part3_EFG.sql` | E, F, G | Work status vs. occupation code conflicts & industry classification checks |
| `gabungan_sakernas_anomali_part4_HIJ.sql` | H, I, J | More occupation-industry pairing rules & education requirements |
| `gabungan_sakernas_anomali_part5_KLM.sql` | K, L, M | Age-education-occupation consistency across three survey periods |
| `gabungan_sakernas_anomali_part6_NOP.sql` | N, O, P | Education level vs. occupation & age-based validation |
| `gabungan_sakernas_anomali_part7_Q.sql` | Q | Education level below minimum for specific occupations |

Full anomaly descriptions: http://s.bps.go.id/anomali_sakernas_ags26

## Database Schema

All queries reference tables in the `tok_3fd42e0e` schema:
- `art_roster` — main roster table containing respondent data and all survey period fields
- `root_table` — assignment metadata (assignment_id, nks, no_dsrt, catatan, survey_period_id)
- `base_table_assignment` — assignment status tracking
- `petugas` — field officer information (PML, PPL)

### Key Table Fields

**Geographic hierarchy (from art_roster):**
- `level_1_full_code` / `level_1_name` — Province
- `level_2_full_code` / `level_2_name` — District/Kabupaten
- `level_3_name` — Kecamatan
- `level_4_name` — Desa
- `level_5_name` — SLS
- `level_6_name` — SubSLS

**Respondent demographics:**
- `nks` — No Kartu Sampel (sample card number)
- `ppno` — Respondent sequence number
- `dem_name` — Respondent name
- `dem_age` — Age
- `dem_edl_value` — Education level

**Three survey periods (MJJ, SJJ, MPK):**
Each period has parallel fields with prefixes:
- `mjj_` — Masa Januari–Juni (Jan-Jun period)
- `sjj_` — Masa Juli–Desember (Jul-Dec period)
- `mpk_` — Masa Pencarian Kerja (Job search period)

**Employment classification fields:**
- `*_kbji_value` — Kode Bidang Pekerjaan (occupation field)
- `*_kbli_value` — Kode Lapangan Usaha (industry/business field)
- `*_emprel_value` / `*_emprel1_value` — Status hubungan kerja (employment relationship)
- `*_henti_value` — Stopped working indicator
- `*ju_ins_value` — Instruction indicator

**Assignment fields:**
- `assignment_id` — Unique assignment identifier
- `assignment_status_alias` — Workflow status (DRAFT, OPEN, APPROVED BY PML, etc.)
- `is_active` — Active flag (1 = active)

## Anomaly Check Pattern

Each file follows a consistent structure:

1. **CTE definitions** — Each anomaly check is defined as a Common Table Expression (WITH clause)
2. **Main SELECT** — Uses LEFT JOINs to filter anomalous records from the full roster
3. **UNION ALL** — Combines results from multiple check groups within the same file
4. **Anomaly concatenation** — Uses `LTRIM(STUFF(CONCAT(...),1,1,''))` to merge multiple anomaly codes per respondent

### Anomaly Code Format
Anomaly codes are prefixed with a comma and concatenated: e.g., `,A1,A2` for an A-group anomaly.

### Standard WHERE Clauses
- `base.is_active = 1` — Only active assignments
- `base.assignment_status_alias <> 'DRAFT' AND base.assignment_status_alias <> 'OPEN'` — Exclude incomplete assignments (except Part 2/C checks which use a different status filter)

## Development Notes

- Queries are written for **Microsoft SQL Server** (T-SQL syntax: STUFF, LTRIM, CONCAT)
- Geographic codes use 4-digit format (province, kabupaten, kecamatan, desa)
- KBLI/KBJI codes are numeric strings (Indonesian standard industrial/occupation classification)
- The token `3fd42e0e` in the schema name appears to be a deployment-specific identifier
