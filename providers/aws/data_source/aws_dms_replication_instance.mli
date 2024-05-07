(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dms_replication_instance

val aws_dms_replication_instance :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_instance_id:string prop ->
  unit ->
  aws_dms_replication_instance

val yojson_of_aws_dms_replication_instance :
  aws_dms_replication_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocated_storage : float prop;
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
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  replication_instance_id:string prop ->
  string ->
  t Tf_core.resource
