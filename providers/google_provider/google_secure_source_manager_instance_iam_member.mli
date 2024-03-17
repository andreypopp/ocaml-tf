(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secure_source_manager_instance_iam_member__condition
type google_secure_source_manager_instance_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  instance_id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val google_secure_source_manager_instance_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:
    google_secure_source_manager_instance_iam_member__condition list ->
  string ->
  t
