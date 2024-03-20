(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_sql_database_instance_latest_recovery_time

val google_sql_database_instance_latest_recovery_time :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  unit ->
  google_sql_database_instance_latest_recovery_time

val yojson_of_google_sql_database_instance_latest_recovery_time :
  google_sql_database_instance_latest_recovery_time -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance : string prop;
  latest_recovery_time : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  string ->
  t Tf_core.resource
