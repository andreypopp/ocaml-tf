(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_instance_iam_member__condition
type google_spanner_instance_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  instance : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val google_spanner_instance_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_spanner_instance_iam_member__condition list ->
  string ->
  t
