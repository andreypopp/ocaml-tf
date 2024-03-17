(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source_iam_member__condition
type google_scc_source_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  organization : string prop;
  role : string prop;
  source : string prop;
}

val google_scc_source_iam_member :
  ?id:string prop ->
  member:string prop ->
  organization:string prop ->
  role:string prop ->
  source:string prop ->
  condition:google_scc_source_iam_member__condition list ->
  string ->
  t
