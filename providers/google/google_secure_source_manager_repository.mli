(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type uris = {
  api : string prop;  (** api *)
  git_https : string prop;  (** git_https *)
  html : string prop;  (** html *)
}

type initial_config

val initial_config :
  ?default_branch:string prop ->
  ?gitignores:string prop list ->
  ?license:string prop ->
  ?readme:string prop ->
  unit ->
  initial_config

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_secure_source_manager_repository

val google_secure_source_manager_repository :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?initial_config:initial_config list ->
  ?timeouts:timeouts ->
  instance:string prop ->
  location:string prop ->
  repository_id:string prop ->
  unit ->
  google_secure_source_manager_repository

val yojson_of_google_secure_source_manager_repository :
  google_secure_source_manager_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  instance : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  repository_id : string prop;
  uid : string prop;
  update_time : string prop;
  uris : uris list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?initial_config:initial_config list ->
  ?timeouts:timeouts ->
  instance:string prop ->
  location:string prop ->
  repository_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?initial_config:initial_config list ->
  ?timeouts:timeouts ->
  instance:string prop ->
  location:string prop ->
  repository_id:string prop ->
  string ->
  t Tf_core.resource
