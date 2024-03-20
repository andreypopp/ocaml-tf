(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_secure_source_manager_instance_iam_policy

val google_secure_source_manager_instance_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  unit ->
  google_secure_source_manager_instance_iam_policy

val yojson_of_google_secure_source_manager_instance_iam_policy :
  google_secure_source_manager_instance_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  instance_id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
