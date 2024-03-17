(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_binary_authorization_attestor_iam_binding__condition
type google_binary_authorization_attestor_iam_binding

type t = private {
  attestor : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val google_binary_authorization_attestor_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  attestor:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_binary_authorization_attestor_iam_binding__condition list ->
  string ->
  t
