(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy_iam_binding__condition
type google_bigquery_datapolicy_data_policy_iam_binding

val google_bigquery_datapolicy_data_policy_iam_binding :
  data_policy_id:string ->
  members:string list ->
  role:string ->
  condition:
    google_bigquery_datapolicy_data_policy_iam_binding__condition
    list ->
  string ->
  unit
