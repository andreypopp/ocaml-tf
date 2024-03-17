(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster_instance__timeouts
type aws_neptune_cluster_instance

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  writer : bool prop;
}

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_neptune_cluster_instance__timeouts ->
  cluster_identifier:string prop ->
  instance_class:string prop ->
  string ->
  t
