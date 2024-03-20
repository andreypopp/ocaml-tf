(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_artifact_registry_repository_iam_policy

val google_artifact_registry_repository_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  repository:string prop ->
  unit ->
  google_artifact_registry_repository_iam_policy

val yojson_of_google_artifact_registry_repository_iam_policy :
  google_artifact_registry_repository_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
