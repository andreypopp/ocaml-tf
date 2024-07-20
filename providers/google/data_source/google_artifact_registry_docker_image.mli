(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_artifact_registry_docker_image

val google_artifact_registry_docker_image :
  ?id:string prop ->
  ?project:string prop ->
  image_name:string prop ->
  location:string prop ->
  repository_id:string prop ->
  unit ->
  google_artifact_registry_docker_image

val yojson_of_google_artifact_registry_docker_image :
  google_artifact_registry_docker_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  build_time : string prop;
  id : string prop;
  image_name : string prop;
  image_size_bytes : string prop;
  location : string prop;
  media_type : string prop;
  name : string prop;
  project : string prop;
  repository_id : string prop;
  self_link : string prop;
  tags : string list prop;
  update_time : string prop;
  upload_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  image_name:string prop ->
  location:string prop ->
  repository_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  image_name:string prop ->
  location:string prop ->
  repository_id:string prop ->
  string ->
  t Tf_core.resource
