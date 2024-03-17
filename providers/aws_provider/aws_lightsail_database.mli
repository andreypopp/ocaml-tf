(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_database

val aws_lightsail_database :
  ?backup_retention_enabled:bool ->
  ?final_snapshot_name:string ->
  ?publicly_accessible:bool ->
  ?skip_final_snapshot:bool ->
  ?tags:(string * string) list ->
  blueprint_id:string ->
  bundle_id:string ->
  master_database_name:string ->
  master_password:string ->
  master_username:string ->
  relational_database_name:string ->
  string ->
  unit
