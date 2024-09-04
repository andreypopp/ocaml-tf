(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_db_snapshot

val aws_db_snapshot :
  ?id:string prop ->
  ?shared_accounts:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  db_instance_identifier:string prop ->
  db_snapshot_identifier:string prop ->
  unit ->
  aws_db_snapshot

val yojson_of_aws_db_snapshot : aws_db_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocated_storage : float prop;
  availability_zone : string prop;
  db_instance_identifier : string prop;
  db_snapshot_arn : string prop;
  db_snapshot_identifier : string prop;
  encrypted : bool prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  option_group_name : string prop;
  port : float prop;
  shared_accounts : string list prop;
  snapshot_type : string prop;
  source_db_snapshot_identifier : string prop;
  source_region : string prop;
  status : string prop;
  storage_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?shared_accounts:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  db_instance_identifier:string prop ->
  db_snapshot_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?shared_accounts:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  db_instance_identifier:string prop ->
  db_snapshot_identifier:string prop ->
  string ->
  t Tf_core.resource
