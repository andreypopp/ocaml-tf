(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type lifecycle_policy = {
  transition_to_archive : string prop;  (** transition_to_archive *)
  transition_to_ia : string prop;  (** transition_to_ia *)
  transition_to_primary_storage_class : string prop;
      (** transition_to_primary_storage_class *)
}

type protection = {
  replication_overwrite : string prop;  (** replication_overwrite *)
}

type aws_efs_file_system

val aws_efs_file_system :
  ?creation_token:string prop ->
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_efs_file_system

val yojson_of_aws_efs_file_system : aws_efs_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone_id : string prop;
  availability_zone_name : string prop;
  creation_token : string prop;
  dns_name : string prop;
  encrypted : bool prop;
  file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  lifecycle_policy : lifecycle_policy list prop;
  name : string prop;
  performance_mode : string prop;
  protection : protection list prop;
  provisioned_throughput_in_mibps : float prop;
  size_in_bytes : float prop;
  tags : (string * string) list prop;
  throughput_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?creation_token:string prop ->
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?creation_token:string prop ->
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
