(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type execution_status = {
  latest_job_end_time : string prop;  (** latest_job_end_time *)
  latest_job_start_time : string prop;  (** latest_job_start_time *)
}

type data

val data :
  ?entity:string prop -> ?resource:string prop -> unit -> data

type data_profile_spec__exclude_fields

val data_profile_spec__exclude_fields :
  ?field_names:string prop list ->
  unit ->
  data_profile_spec__exclude_fields

type data_profile_spec__include_fields

val data_profile_spec__include_fields :
  ?field_names:string prop list ->
  unit ->
  data_profile_spec__include_fields

type data_profile_spec__post_scan_actions__bigquery_export

val data_profile_spec__post_scan_actions__bigquery_export :
  ?results_table:string prop ->
  unit ->
  data_profile_spec__post_scan_actions__bigquery_export

type data_profile_spec__post_scan_actions

val data_profile_spec__post_scan_actions :
  bigquery_export:
    data_profile_spec__post_scan_actions__bigquery_export list ->
  unit ->
  data_profile_spec__post_scan_actions

type data_profile_spec

val data_profile_spec :
  ?row_filter:string prop ->
  ?sampling_percent:float prop ->
  exclude_fields:data_profile_spec__exclude_fields list ->
  include_fields:data_profile_spec__include_fields list ->
  post_scan_actions:data_profile_spec__post_scan_actions list ->
  unit ->
  data_profile_spec

type data_quality_spec__post_scan_actions__bigquery_export

val data_quality_spec__post_scan_actions__bigquery_export :
  ?results_table:string prop ->
  unit ->
  data_quality_spec__post_scan_actions__bigquery_export

type data_quality_spec__post_scan_actions

val data_quality_spec__post_scan_actions :
  bigquery_export:
    data_quality_spec__post_scan_actions__bigquery_export list ->
  unit ->
  data_quality_spec__post_scan_actions

type data_quality_spec__rules__non_null_expectation

val data_quality_spec__rules__non_null_expectation :
  unit -> data_quality_spec__rules__non_null_expectation

type data_quality_spec__rules__range_expectation

val data_quality_spec__rules__range_expectation :
  ?max_value:string prop ->
  ?min_value:string prop ->
  ?strict_max_enabled:bool prop ->
  ?strict_min_enabled:bool prop ->
  unit ->
  data_quality_spec__rules__range_expectation

type data_quality_spec__rules__regex_expectation

val data_quality_spec__rules__regex_expectation :
  regex:string prop ->
  unit ->
  data_quality_spec__rules__regex_expectation

type data_quality_spec__rules__row_condition_expectation

val data_quality_spec__rules__row_condition_expectation :
  sql_expression:string prop ->
  unit ->
  data_quality_spec__rules__row_condition_expectation

type data_quality_spec__rules__set_expectation

val data_quality_spec__rules__set_expectation :
  values:string prop list ->
  unit ->
  data_quality_spec__rules__set_expectation

type data_quality_spec__rules__statistic_range_expectation

val data_quality_spec__rules__statistic_range_expectation :
  ?max_value:string prop ->
  ?min_value:string prop ->
  ?strict_max_enabled:bool prop ->
  ?strict_min_enabled:bool prop ->
  statistic:string prop ->
  unit ->
  data_quality_spec__rules__statistic_range_expectation

type data_quality_spec__rules__table_condition_expectation

val data_quality_spec__rules__table_condition_expectation :
  sql_expression:string prop ->
  unit ->
  data_quality_spec__rules__table_condition_expectation

type data_quality_spec__rules__uniqueness_expectation

val data_quality_spec__rules__uniqueness_expectation :
  unit -> data_quality_spec__rules__uniqueness_expectation

type data_quality_spec__rules

val data_quality_spec__rules :
  ?column:string prop ->
  ?description:string prop ->
  ?ignore_null:bool prop ->
  ?name:string prop ->
  ?threshold:float prop ->
  dimension:string prop ->
  non_null_expectation:
    data_quality_spec__rules__non_null_expectation list ->
  range_expectation:data_quality_spec__rules__range_expectation list ->
  regex_expectation:data_quality_spec__rules__regex_expectation list ->
  row_condition_expectation:
    data_quality_spec__rules__row_condition_expectation list ->
  set_expectation:data_quality_spec__rules__set_expectation list ->
  statistic_range_expectation:
    data_quality_spec__rules__statistic_range_expectation list ->
  table_condition_expectation:
    data_quality_spec__rules__table_condition_expectation list ->
  uniqueness_expectation:
    data_quality_spec__rules__uniqueness_expectation list ->
  unit ->
  data_quality_spec__rules

type data_quality_spec

val data_quality_spec :
  ?row_filter:string prop ->
  ?sampling_percent:float prop ->
  post_scan_actions:data_quality_spec__post_scan_actions list ->
  rules:data_quality_spec__rules list ->
  unit ->
  data_quality_spec

type execution_spec__trigger__on_demand

val execution_spec__trigger__on_demand :
  unit -> execution_spec__trigger__on_demand

type execution_spec__trigger__schedule

val execution_spec__trigger__schedule :
  cron:string prop -> unit -> execution_spec__trigger__schedule

type execution_spec__trigger

val execution_spec__trigger :
  on_demand:execution_spec__trigger__on_demand list ->
  schedule:execution_spec__trigger__schedule list ->
  unit ->
  execution_spec__trigger

type execution_spec

val execution_spec :
  ?field:string prop ->
  trigger:execution_spec__trigger list ->
  unit ->
  execution_spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataplex_datascan

val google_dataplex_datascan :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  data_scan_id:string prop ->
  location:string prop ->
  data:data list ->
  data_profile_spec:data_profile_spec list ->
  data_quality_spec:data_quality_spec list ->
  execution_spec:execution_spec list ->
  unit ->
  google_dataplex_datascan

val yojson_of_google_dataplex_datascan :
  google_dataplex_datascan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  data_scan_id : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  execution_status : execution_status list prop;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  data_scan_id:string prop ->
  location:string prop ->
  data:data list ->
  data_profile_spec:data_profile_spec list ->
  data_quality_spec:data_quality_spec list ->
  execution_spec:execution_spec list ->
  string ->
  t
