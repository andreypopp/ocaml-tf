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
  latest_job_end_time : string prop;  (** latest_job_end_time *)
  latest_job_start_time : string prop;  (** latest_job_start_time *)
}

type google_dataplex_datascan

type t = private {
  create_time : string prop;
  data_scan_id : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  execution_status :
    google_dataplex_datascan__execution_status list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
}

val google_dataplex_datascan :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_dataplex_datascan__timeouts ->
  data_scan_id:string prop ->
  location:string prop ->
  data:google_dataplex_datascan__data list ->
  data_profile_spec:google_dataplex_datascan__data_profile_spec list ->
  data_quality_spec:google_dataplex_datascan__data_quality_spec list ->
  execution_spec:google_dataplex_datascan__execution_spec list ->
  string ->
  t
