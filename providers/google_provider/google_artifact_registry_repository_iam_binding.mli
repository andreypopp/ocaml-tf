(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_artifact_registry_repository_iam_binding__condition
type google_artifact_registry_repository_iam_binding

val google_artifact_registry_repository_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  members:string prop list ->
  repository:string prop ->
  role:string prop ->
  condition:
    google_artifact_registry_repository_iam_binding__condition list ->
  string ->
  unit
