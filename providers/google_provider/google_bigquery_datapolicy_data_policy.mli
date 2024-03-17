(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy__data_masking_policy
type google_bigquery_datapolicy_data_policy__timeouts
type google_bigquery_datapolicy_data_policy

val google_bigquery_datapolicy_data_policy :
  ?timeouts:google_bigquery_datapolicy_data_policy__timeouts ->
  data_policy_id:string ->
  data_policy_type:string ->
  location:string ->
  policy_tag:string ->
  data_masking_policy:
    google_bigquery_datapolicy_data_policy__data_masking_policy list ->
  string ->
  unit
