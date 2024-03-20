(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_sql_backup_run

val google_sql_backup_run :
  ?backup_id:float prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?project:string prop ->
  instance:string prop ->
  unit ->
  google_sql_backup_run

val yojson_of_google_sql_backup_run : google_sql_backup_run -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_id : float prop;
  id : string prop;
  instance : string prop;
  location : string prop;
  most_recent : bool prop;
  project : string prop;
  start_time : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backup_id:float prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?project:string prop ->
  instance:string prop ->
  string ->
  t

val make :
  ?backup_id:float prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?project:string prop ->
  instance:string prop ->
  string ->
  t Tf_core.resource
