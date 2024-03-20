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

type aws_rds_cluster_instance

val aws_rds_cluster_instance :
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?ca_cert_identifier:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?custom_iam_instance_profile:string prop ->
  ?db_parameter_group_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?monitoring_interval:float prop ->
  ?monitoring_role_arn:string prop ->
  ?performance_insights_enabled:bool prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?performance_insights_retention_period:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?publicly_accessible:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  engine:string prop ->
  instance_class:string prop ->
  unit ->
  aws_rds_cluster_instance

val yojson_of_aws_rds_cluster_instance :
  aws_rds_cluster_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  ca_cert_identifier : string prop;
  cluster_identifier : string prop;
  copy_tags_to_snapshot : bool prop;
  custom_iam_instance_profile : string prop;
  db_parameter_group_name : string prop;
  db_subnet_group_name : string prop;
  dbi_resource_id : string prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  kms_key_id : string prop;
  monitoring_interval : float prop;
  monitoring_role_arn : string prop;
  network_type : string prop;
  performance_insights_enabled : bool prop;
  performance_insights_kms_key_id : string prop;
  performance_insights_retention_period : float prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  promotion_tier : float prop;
  publicly_accessible : bool prop;
  storage_encrypted : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  writer : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?ca_cert_identifier:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?custom_iam_instance_profile:string prop ->
  ?db_parameter_group_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?monitoring_interval:float prop ->
  ?monitoring_role_arn:string prop ->
  ?performance_insights_enabled:bool prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?performance_insights_retention_period:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?publicly_accessible:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  engine:string prop ->
  instance_class:string prop ->
  string ->
  t

val make :
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?ca_cert_identifier:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?custom_iam_instance_profile:string prop ->
  ?db_parameter_group_name:string prop ->
  ?db_subnet_group_name:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?monitoring_interval:float prop ->
  ?monitoring_role_arn:string prop ->
  ?performance_insights_enabled:bool prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?performance_insights_retention_period:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?publicly_accessible:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  engine:string prop ->
  instance_class:string prop ->
  string ->
  t Tf_core.resource
