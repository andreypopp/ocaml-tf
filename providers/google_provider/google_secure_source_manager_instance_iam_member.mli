(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secure_source_manager_instance_iam_member__condition
type google_secure_source_manager_instance_iam_member

val google_secure_source_manager_instance_iam_member :
  instance_id:string ->
  member:string ->
  role:string ->
  condition:
    google_secure_source_manager_instance_iam_member__condition list ->
  string ->
  unit
