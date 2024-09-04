(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_container_engine_versions

val google_container_engine_versions :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?version_prefix:string prop ->
  unit ->
  google_container_engine_versions

val yojson_of_google_container_engine_versions :
  google_container_engine_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_cluster_version : string prop;
  id : string prop;
  latest_master_version : string prop;
  latest_node_version : string prop;
  location : string prop;
  project : string prop;
  release_channel_default_version : string Tf_core.assoc prop;
  release_channel_latest_version : string Tf_core.assoc prop;
  valid_master_versions : string list prop;
  valid_node_versions : string list prop;
  version_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?version_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?version_prefix:string prop ->
  string ->
  t Tf_core.resource
