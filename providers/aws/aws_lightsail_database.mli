(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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
  unit ->
  aws_lightsail_database

val yojson_of_aws_lightsail_database : aws_lightsail_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  apply_immediately : bool prop;
  arn : string prop;
  availability_zone : string prop;
  backup_retention_enabled : bool prop;
  blueprint_id : string prop;
  bundle_id : string prop;
  ca_certificate_identifier : string prop;
  cpu_count : float prop;
  created_at : string prop;
  disk_size : float prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_name : string prop;
  id : string prop;
  master_database_name : string prop;
  master_endpoint_address : string prop;
  master_endpoint_port : float prop;
  master_password : string prop;
  master_username : string prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  ram_size : float prop;
  relational_database_name : string prop;
  secondary_availability_zone : string prop;
  skip_final_snapshot : bool prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
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
  t

val make :
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
  t Tf_core.resource
