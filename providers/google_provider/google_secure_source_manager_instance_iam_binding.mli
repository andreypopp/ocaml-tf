(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secure_source_manager_instance_iam_binding__condition
type google_secure_source_manager_instance_iam_binding

val google_secure_source_manager_instance_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_secure_source_manager_instance_iam_binding__condition list ->
  string ->
  unit
