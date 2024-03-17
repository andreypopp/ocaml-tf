(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  organization : string prop;
  policy_data : string prop;
  source : string prop;
}

val google_scc_source_iam_policy :
  ?id:string prop ->
  organization:string prop ->
  policy_data:string prop ->
  source:string prop ->
  string ->
  t
