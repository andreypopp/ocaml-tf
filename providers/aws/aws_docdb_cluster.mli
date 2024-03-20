(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_docdb_cluster

val aws_docdb_cluster :
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backup_retention_period:float prop ->
  ?cluster_identifier:string prop ->
  ?cluster_identifier_prefix:string prop ->
  ?cluster_members:string prop list ->
  ?db_cluster_parameter_group_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?deletion_protection:bool prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_cluster_identifier:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?master_password:string prop ->
  ?master_username:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  unit ->
  aws_docdb_cluster

val yojson_of_aws_docdb_cluster : aws_docdb_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  backup_retention_period : float prop;
  cluster_identifier : string prop;
  cluster_identifier_prefix : string prop;
  cluster_members : string list prop;
  cluster_resource_id : string prop;
  db_cluster_parameter_group_name : string prop;
  db_subnet_group_name : string prop;
  deletion_protection : bool prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_identifier : string prop;
  global_cluster_identifier : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  master_password : string prop;
  master_username : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  skip_final_snapshot : bool prop;
  snapshot_identifier : string prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backup_retention_period:float prop ->
  ?cluster_identifier:string prop ->
  ?cluster_identifier_prefix:string prop ->
  ?cluster_members:string prop list ->
  ?db_cluster_parameter_group_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?deletion_protection:bool prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_cluster_identifier:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?master_password:string prop ->
  ?master_username:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backup_retention_period:float prop ->
  ?cluster_identifier:string prop ->
  ?cluster_identifier_prefix:string prop ->
  ?cluster_members:string prop list ->
  ?db_cluster_parameter_group_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?deletion_protection:bool prop ->
  ?enabled_cloudwatch_logs_exports:string prop list ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_cluster_identifier:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?master_password:string prop ->
  ?master_username:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
