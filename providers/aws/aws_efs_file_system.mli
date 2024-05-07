(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type size_in_bytes = {
  value : float prop;  (** value *)
  value_in_ia : float prop;  (** value_in_ia *)
  value_in_standard : float prop;  (** value_in_standard *)
}

type lifecycle_policy

val lifecycle_policy :
  ?transition_to_archive:string prop ->
  ?transition_to_ia:string prop ->
  ?transition_to_primary_storage_class:string prop ->
  unit ->
  lifecycle_policy

type protection

val protection :
  ?replication_overwrite:string prop -> unit -> protection

type aws_efs_file_system

val aws_efs_file_system :
  ?availability_zone_name:string prop ->
  ?creation_token:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?performance_mode:string prop ->
  ?provisioned_throughput_in_mibps:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?throughput_mode:string prop ->
  ?lifecycle_policy:lifecycle_policy list ->
  ?protection:protection list ->
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
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  number_of_mount_targets : float prop;
  owner_id : string prop;
  performance_mode : string prop;
  provisioned_throughput_in_mibps : float prop;
  size_in_bytes : size_in_bytes list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone_name:string prop ->
  ?creation_token:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?performance_mode:string prop ->
  ?provisioned_throughput_in_mibps:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?throughput_mode:string prop ->
  ?lifecycle_policy:lifecycle_policy list ->
  ?protection:protection list ->
  string ->
  t

val make :
  ?availability_zone_name:string prop ->
  ?creation_token:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?performance_mode:string prop ->
  ?provisioned_throughput_in_mibps:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?throughput_mode:string prop ->
  ?lifecycle_policy:lifecycle_policy list ->
  ?protection:protection list ->
  string ->
  t Tf_core.resource
