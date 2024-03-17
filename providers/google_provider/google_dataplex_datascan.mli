(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_datascan__data
type google_dataplex_datascan__data_profile_spec__exclude_fields
type google_dataplex_datascan__data_profile_spec__include_fields

type google_dataplex_datascan__data_profile_spec__post_scan_actions__bigquery_export

type google_dataplex_datascan__data_profile_spec__post_scan_actions
type google_dataplex_datascan__data_profile_spec

type google_dataplex_datascan__data_quality_spec__post_scan_actions__bigquery_export

type google_dataplex_datascan__data_quality_spec__post_scan_actions

type google_dataplex_datascan__data_quality_spec__rules__non_null_expectation

type google_dataplex_datascan__data_quality_spec__rules__range_expectation

type google_dataplex_datascan__data_quality_spec__rules__regex_expectation

type google_dataplex_datascan__data_quality_spec__rules__row_condition_expectation

type google_dataplex_datascan__data_quality_spec__rules__set_expectation

type google_dataplex_datascan__data_quality_spec__rules__statistic_range_expectation

type google_dataplex_datascan__data_quality_spec__rules__table_condition_expectation

type google_dataplex_datascan__data_quality_spec__rules__uniqueness_expectation

type google_dataplex_datascan__data_quality_spec__rules
type google_dataplex_datascan__data_quality_spec
type google_dataplex_datascan__execution_spec__trigger__on_demand
type google_dataplex_datascan__execution_spec__trigger__schedule
type google_dataplex_datascan__execution_spec__trigger
type google_dataplex_datascan__execution_spec
type google_dataplex_datascan__timeouts

type google_dataplex_datascan__execution_status = {
  latest_job_end_time : string;  (** latest_job_end_time *)
  latest_job_start_time : string;  (** latest_job_start_time *)
}

type google_dataplex_datascan

val google_dataplex_datascan :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_dataplex_datascan__timeouts ->
  data_scan_id:string ->
  location:string ->
  data:google_dataplex_datascan__data list ->
  data_profile_spec:google_dataplex_datascan__data_profile_spec list ->
  data_quality_spec:google_dataplex_datascan__data_quality_spec list ->
  execution_spec:google_dataplex_datascan__execution_spec list ->
  string ->
  unit
