(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_dataplex_zone_iam_policy

val google_dataplex_zone_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  dataplex_zone:string prop ->
  lake:string prop ->
  policy_data:string prop ->
  unit ->
  google_dataplex_zone_iam_policy

val yojson_of_google_dataplex_zone_iam_policy :
  google_dataplex_zone_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dataplex_zone : string prop;
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  dataplex_zone:string prop ->
  lake:string prop ->
  policy_data:string prop ->
  string ->
  t
