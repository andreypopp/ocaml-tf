(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_datapolicy_data_policy_iam_policy

type t = private {
  data_policy_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_bigquery_datapolicy_data_policy_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_policy_id:string prop ->
  policy_data:string prop ->
  string ->
  t
