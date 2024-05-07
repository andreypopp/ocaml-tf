(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_container_azure_versions

val google_container_azure_versions :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  unit ->
  google_container_azure_versions

val yojson_of_google_container_azure_versions :
  google_container_azure_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  project : string prop;
  supported_regions : string list prop;
  valid_versions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
