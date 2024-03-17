(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secure_source_manager_instance_iam_binding__condition
type google_secure_source_manager_instance_iam_binding

val google_secure_source_manager_instance_iam_binding :
  instance_id:string ->
  members:string list ->
  role:string ->
  condition:
    google_secure_source_manager_instance_iam_binding__condition list ->
  string ->
  unit
