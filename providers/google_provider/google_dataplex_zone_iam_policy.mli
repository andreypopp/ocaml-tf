(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_zone_iam_policy

type t = private {
  dataplex_zone : string prop;
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_dataplex_zone_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  dataplex_zone:string prop ->
  lake:string prop ->
  policy_data:string prop ->
  string ->
  t
