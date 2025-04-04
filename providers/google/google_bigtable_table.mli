(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type automated_backup_policy

val automated_backup_policy :
  ?frequency:string prop ->
  ?retention_period:string prop ->
  unit ->
  automated_backup_policy

type column_family

val column_family : family:string prop -> unit -> column_family

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type google_bigtable_table

val google_bigtable_table :
  ?change_stream_retention:string prop ->
  ?deletion_protection:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?split_keys:string prop list ->
  ?timeouts:timeouts ->
  instance_name:string prop ->
  name:string prop ->
  automated_backup_policy:automated_backup_policy list ->
  column_family:column_family list ->
  unit ->
  google_bigtable_table

val yojson_of_google_bigtable_table : google_bigtable_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  change_stream_retention : string prop;
  deletion_protection : string prop;
  id : string prop;
  instance_name : string prop;
  name : string prop;
  project : string prop;
  split_keys : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?change_stream_retention:string prop ->
  ?deletion_protection:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?split_keys:string prop list ->
  ?timeouts:timeouts ->
  instance_name:string prop ->
  name:string prop ->
  automated_backup_policy:automated_backup_policy list ->
  column_family:column_family list ->
  string ->
  t

val make :
  ?change_stream_retention:string prop ->
  ?deletion_protection:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?split_keys:string prop list ->
  ?timeouts:timeouts ->
  instance_name:string prop ->
  name:string prop ->
  automated_backup_policy:automated_backup_policy list ->
  column_family:column_family list ->
  string ->
  t Tf_core.resource
