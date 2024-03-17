(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_artifact_registry_repository_iam_binding__condition
type google_artifact_registry_repository_iam_binding

val google_artifact_registry_repository_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  members:string list ->
  repository:string ->
  role:string ->
  condition:
    google_artifact_registry_repository_iam_binding__condition list ->
  string ->
  unit
