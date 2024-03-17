(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account_iam_binding__condition
type google_service_account_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
  service_account_id : string prop;
}

val google_service_account_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  role:string prop ->
  service_account_id:string prop ->
  condition:google_service_account_iam_binding__condition list ->
  string ->
  t
