(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_artifact_registry_repository_iam_member__condition
type google_artifact_registry_repository_iam_member

val google_artifact_registry_repository_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  member:string ->
  repository:string ->
  role:string ->
  condition:
    google_artifact_registry_repository_iam_member__condition list ->
  string ->
  unit
