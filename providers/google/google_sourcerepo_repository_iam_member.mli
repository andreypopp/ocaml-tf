(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sourcerepo_repository_iam_member__condition
type google_sourcerepo_repository_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  repository : string prop;
  role : string prop;
}

val google_sourcerepo_repository_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  repository:string prop ->
  role:string prop ->
  condition:google_sourcerepo_repository_iam_member__condition list ->
  string ->
  t
