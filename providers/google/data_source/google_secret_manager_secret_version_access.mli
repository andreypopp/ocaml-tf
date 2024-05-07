(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_secret_manager_secret_version_access

val google_secret_manager_secret_version_access :
  ?id:string prop ->
  ?project:string prop ->
  ?version:string prop ->
  secret:string prop ->
  unit ->
  google_secret_manager_secret_version_access

val yojson_of_google_secret_manager_secret_version_access :
  google_secret_manager_secret_version_access -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  project : string prop;
  secret : string prop;
  secret_data : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?version:string prop ->
  secret:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?version:string prop ->
  secret:string prop ->
  string ->
  t Tf_core.resource
