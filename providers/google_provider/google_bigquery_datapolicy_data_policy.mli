(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy__data_masking_policy
type google_bigquery_datapolicy_data_policy__timeouts
type google_bigquery_datapolicy_data_policy

val google_bigquery_datapolicy_data_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_bigquery_datapolicy_data_policy__timeouts ->
  data_policy_id:string prop ->
  data_policy_type:string prop ->
  location:string prop ->
  policy_tag:string prop ->
  data_masking_policy:
    google_bigquery_datapolicy_data_policy__data_masking_policy list ->
  string ->
  unit
