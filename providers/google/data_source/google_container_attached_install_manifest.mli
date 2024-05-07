(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_container_attached_install_manifest

val google_container_attached_install_manifest :
  ?id:string prop ->
  cluster_id:string prop ->
  location:string prop ->
  platform_version:string prop ->
  project:string prop ->
  unit ->
  google_container_attached_install_manifest

val yojson_of_google_container_attached_install_manifest :
  google_container_attached_install_manifest -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_id : string prop;
  id : string prop;
  location : string prop;
  manifest : string prop;
  platform_version : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_id:string prop ->
  location:string prop ->
  platform_version:string prop ->
  project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_id:string prop ->
  location:string prop ->
  platform_version:string prop ->
  project:string prop ->
  string ->
  t Tf_core.resource
