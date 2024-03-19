(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type serverless_v2_scaling_configuration

val serverless_v2_scaling_configuration :
  ?max_capacity:float prop ->
  ?min_capacity:float prop ->
  unit ->
  serverless_v2_scaling_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_neptune_cluster

val aws_neptune_cluster :
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?availability_zones:string prop list ->
  ?backup_retention_period:float prop ->
  ?cluster_identifier:string prop ->
  ?cluster_identifier_prefix:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?deletion_protection:bool prop ->
  ?enable_cloudwatch_logs_exports:string prop list ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_cluster_identifier:string prop ->
  ?iam_database_authentication_enabled:bool prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?neptune_cluster_parameter_group_name:string prop ->
  ?neptune_instance_parameter_group_name:string prop ->
  ?neptune_subnet_group_name:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?replication_source_identifier:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  serverless_v2_scaling_configuration:
    serverless_v2_scaling_configuration list ->
  unit ->
  aws_neptune_cluster

val yojson_of_aws_neptune_cluster : aws_neptune_cluster -> json

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
  copy_tags_to_snapshot : bool prop;
  deletion_protection : bool prop;
  enable_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  final_snapshot_identifier : string prop;
  global_cluster_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_arn : string prop;
  neptune_cluster_parameter_group_name : string prop;
  neptune_instance_parameter_group_name : string prop;
  neptune_subnet_group_name : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  replication_source_identifier : string prop;
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
  ?copy_tags_to_snapshot:bool prop ->
  ?deletion_protection:bool prop ->
  ?enable_cloudwatch_logs_exports:string prop list ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?final_snapshot_identifier:string prop ->
  ?global_cluster_identifier:string prop ->
  ?iam_database_authentication_enabled:bool prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?neptune_cluster_parameter_group_name:string prop ->
  ?neptune_instance_parameter_group_name:string prop ->
  ?neptune_subnet_group_name:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?replication_source_identifier:string prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_identifier:string prop ->
  ?storage_encrypted:bool prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  serverless_v2_scaling_configuration:
    serverless_v2_scaling_configuration list ->
  string ->
  t
