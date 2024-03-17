(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_instance_iam_binding__condition
type google_spanner_instance_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  instance : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val google_spanner_instance_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_spanner_instance_iam_binding__condition list ->
  string ->
  t
