(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_db_snapshot

val aws_db_snapshot :
  ?db_instance_identifier:string prop ->
  ?db_snapshot_identifier:string prop ->
  ?id:string prop ->
  ?include_public:bool prop ->
  ?include_shared:bool prop ->
  ?most_recent:bool prop ->
  ?snapshot_type:string prop ->
  ?tags:(string * string prop) list ->
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
  include_public : bool prop;
  include_shared : bool prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  most_recent : bool prop;
  option_group_name : string prop;
  port : float prop;
  snapshot_create_time : string prop;
  snapshot_type : string prop;
  source_db_snapshot_identifier : string prop;
  source_region : string prop;
  status : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?db_instance_identifier:string prop ->
  ?db_snapshot_identifier:string prop ->
  ?id:string prop ->
  ?include_public:bool prop ->
  ?include_shared:bool prop ->
  ?most_recent:bool prop ->
  ?snapshot_type:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?db_instance_identifier:string prop ->
  ?db_snapshot_identifier:string prop ->
  ?id:string prop ->
  ?include_public:bool prop ->
  ?include_shared:bool prop ->
  ?most_recent:bool prop ->
  ?snapshot_type:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
