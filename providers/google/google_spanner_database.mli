(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_config

val encryption_config :
  kms_key_name:string prop -> unit -> encryption_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_spanner_database

val google_spanner_database :
  ?database_dialect:string prop ->
  ?ddl:string prop list ->
  ?deletion_protection:bool prop ->
  ?enable_drop_protection:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?version_retention_period:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  encryption_config:encryption_config list ->
  unit ->
  google_spanner_database

val yojson_of_google_spanner_database :
  google_spanner_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  database_dialect : string prop;
  ddl : string list prop;
  deletion_protection : bool prop;
  enable_drop_protection : bool prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  version_retention_period : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database_dialect:string prop ->
  ?ddl:string prop list ->
  ?deletion_protection:bool prop ->
  ?enable_drop_protection:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?version_retention_period:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  encryption_config:encryption_config list ->
  string ->
  t

val make :
  ?database_dialect:string prop ->
  ?ddl:string prop list ->
  ?deletion_protection:bool prop ->
  ?enable_drop_protection:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?version_retention_period:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  encryption_config:encryption_config list ->
  string ->
  t Tf_core.resource
