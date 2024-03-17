(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service_iam_binding__condition
type google_endpoints_service_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
  service_name : string prop;
}

val google_endpoints_service_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  role:string prop ->
  service_name:string prop ->
  condition:google_endpoints_service_iam_binding__condition list ->
  string ->
  t
