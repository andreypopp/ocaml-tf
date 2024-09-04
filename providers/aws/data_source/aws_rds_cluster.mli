(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}

type aws_rds_cluster

val aws_rds_cluster :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_identifier:string prop ->
  unit ->
  aws_rds_cluster

val yojson_of_aws_rds_cluster : aws_rds_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  backtrack_window : float prop;
  backup_retention_period : float prop;
  cluster_identifier : string prop;
  cluster_members : string list prop;
  cluster_resource_id : string prop;
  database_name : string prop;
  db_cluster_parameter_group_name : string prop;
  db_subnet_group_name : string prop;
  db_system_id : string prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_mode : string prop;
  engine_version : string prop;
  final_snapshot_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  master_user_secret : master_user_secret list prop;
  master_username : string prop;
  network_type : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  replication_source_identifier : string prop;
  storage_encrypted : bool prop;
  tags : string Tf_core.assoc prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_identifier:string prop ->
  string ->
  t Tf_core.resource
