(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_secret_manager_secret_version

val google_secret_manager_secret_version :
  ?id:string prop ->
  ?project:string prop ->
  ?version:string prop ->
  secret:string prop ->
  unit ->
  google_secret_manager_secret_version

val yojson_of_google_secret_manager_secret_version :
  google_secret_manager_secret_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  destroy_time : string prop;
  enabled : bool prop;
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
