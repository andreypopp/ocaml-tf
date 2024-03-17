(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_ca_pool_iam_policy

type t = private {
  ca_pool : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_privateca_ca_pool_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ca_pool:string prop ->
  policy_data:string prop ->
  string ->
  t
