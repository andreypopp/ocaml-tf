(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sourcerepo_repository_iam_binding__condition
type google_sourcerepo_repository_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  repository : string prop;
  role : string prop;
}

val google_sourcerepo_repository_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  repository:string prop ->
  role:string prop ->
  condition:google_sourcerepo_repository_iam_binding__condition list ->
  string ->
  t
