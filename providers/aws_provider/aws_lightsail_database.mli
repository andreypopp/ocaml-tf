(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_database

val aws_lightsail_database :
  ?apply_immediately:bool ->
  ?availability_zone:string ->
  ?backup_retention_enabled:bool ->
  ?final_snapshot_name:string ->
  ?id:string ->
  ?preferred_backup_window:string ->
  ?preferred_maintenance_window:string ->
  ?publicly_accessible:bool ->
  ?skip_final_snapshot:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  blueprint_id:string ->
  bundle_id:string ->
  master_database_name:string ->
  master_password:string ->
  master_username:string ->
  relational_database_name:string ->
  string ->
  unit
