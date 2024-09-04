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

type aws_neptune_cluster_instance

val aws_neptune_cluster_instance :
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?neptune_parameter_group_name:string prop ->
  ?neptune_subnet_group_name:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?publicly_accessible:bool prop ->
  ?skip_final_snapshot:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  instance_class:string prop ->
  unit ->
  aws_neptune_cluster_instance

val yojson_of_aws_neptune_cluster_instance :
  aws_neptune_cluster_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  apply_immediately : bool prop;
  arn : string prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  cluster_identifier : string prop;
  dbi_resource_id : string prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  instance_class : string prop;
  kms_key_arn : string prop;
  neptune_parameter_group_name : string prop;
  neptune_subnet_group_name : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  promotion_tier : float prop;
  publicly_accessible : bool prop;
  skip_final_snapshot : bool prop;
  storage_encrypted : bool prop;
  storage_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  writer : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?neptune_parameter_group_name:string prop ->
  ?neptune_subnet_group_name:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?publicly_accessible:bool prop ->
  ?skip_final_snapshot:bool prop ->
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
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?neptune_parameter_group_name:string prop ->
  ?neptune_subnet_group_name:string prop ->
  ?port:float prop ->
  ?preferred_backup_window:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?publicly_accessible:bool prop ->
  ?skip_final_snapshot:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  instance_class:string prop ->
  string ->
  t Tf_core.resource
