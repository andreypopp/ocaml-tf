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

type aws_docdb_cluster_instance

val aws_docdb_cluster_instance :
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?ca_cert_identifier:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?enable_performance_insights:bool prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  instance_class:string prop ->
  unit ->
  aws_docdb_cluster_instance

val yojson_of_aws_docdb_cluster_instance :
  aws_docdb_cluster_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  ca_cert_identifier : string prop;
  cluster_identifier : string prop;
  copy_tags_to_snapshot : bool prop;
  db_subnet_group_name : string prop;
  dbi_resource_id : string prop;
  enable_performance_insights : bool prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  kms_key_id : string prop;
  performance_insights_kms_key_id : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  promotion_tier : float prop;
  publicly_accessible : bool prop;
  storage_encrypted : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  writer : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?ca_cert_identifier:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?enable_performance_insights:bool prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  instance_class:string prop ->
  string ->
  t

val make :
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?ca_cert_identifier:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?enable_performance_insights:bool prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  instance_class:string prop ->
  string ->
  t Tf_core.resource
