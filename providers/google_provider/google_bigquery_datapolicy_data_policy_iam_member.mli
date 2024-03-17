(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy_iam_member__condition
type google_bigquery_datapolicy_data_policy_iam_member

val google_bigquery_datapolicy_data_policy_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  data_policy_id:string ->
  member:string ->
  role:string ->
  condition:
    google_bigquery_datapolicy_data_policy_iam_member__condition list ->
  string ->
  unit
