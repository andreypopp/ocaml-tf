(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_instance__timeouts
type aws_dms_replication_instance

type t = private {
  allocated_storage : float prop;
  allow_major_version_upgrade : bool prop;
  apply_immediately : bool prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_arn : string prop;
  multi_az : bool prop;
  network_type : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  replication_instance_arn : string prop;
  replication_instance_class : string prop;
  replication_instance_id : string prop;
  replication_instance_private_ips : string list prop;
  replication_instance_public_ips : string list prop;
  replication_subnet_group_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

val aws_dms_replication_instance :
  ?allocated_storage:float prop ->
  ?allow_major_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?multi_az:bool prop ->
  ?network_type:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?publicly_accessible:bool prop ->
  ?replication_subnet_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_dms_replication_instance__timeouts ->
  replication_instance_class:string prop ->
  replication_instance_id:string prop ->
  string ->
  t
