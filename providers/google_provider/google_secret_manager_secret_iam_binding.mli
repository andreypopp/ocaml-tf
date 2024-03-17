(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret_iam_binding__condition
type google_secret_manager_secret_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  secret_id : string prop;
}

val google_secret_manager_secret_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  role:string prop ->
  secret_id:string prop ->
  condition:google_secret_manager_secret_iam_binding__condition list ->
  string ->
  t
