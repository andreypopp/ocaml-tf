(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source_iam_binding__condition
type google_scc_source_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  organization : string prop;
  role : string prop;
  source : string prop;
}

val google_scc_source_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  organization:string prop ->
  role:string prop ->
  source:string prop ->
  condition:google_scc_source_iam_binding__condition list ->
  string ->
  t
