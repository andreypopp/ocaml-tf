(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_database

val aws_lightsail_database :
  ?apply_immediately:bool prop ->
  ?availability_zone:string prop ->
  ?backup_retention_enabled:bool prop ->
  ?final_snapshot_name:string prop ->
  ?id:string prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?publicly_accessible:bool prop ->
  ?skip_final_snapshot:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  blueprint_id:string prop ->
  bundle_id:string prop ->
  master_database_name:string prop ->
  master_password:string prop ->
  master_username:string prop ->
  relational_database_name:string prop ->
  string ->
  unit
