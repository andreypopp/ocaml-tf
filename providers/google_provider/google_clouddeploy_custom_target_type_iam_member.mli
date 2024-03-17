(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddeploy_custom_target_type_iam_member__condition
type google_clouddeploy_custom_target_type_iam_member

val google_clouddeploy_custom_target_type_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  member:string ->
  name:string ->
  role:string ->
  condition:
    google_clouddeploy_custom_target_type_iam_member__condition list ->
  string ->
  unit
