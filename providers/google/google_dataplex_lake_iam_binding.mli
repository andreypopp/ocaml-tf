(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_lake_iam_binding__condition
type google_dataplex_lake_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val google_dataplex_lake_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_dataplex_lake_iam_binding__condition list ->
  string ->
  t
