(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_file_system__lifecycle_policy
type aws_efs_file_system__protection

type aws_efs_file_system__size_in_bytes = {
  value : float prop;  (** value *)
  value_in_ia : float prop;  (** value_in_ia *)
  value_in_standard : float prop;  (** value_in_standard *)
}

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
  lifecycle_policy:aws_efs_file_system__lifecycle_policy list ->
  protection:aws_efs_file_system__protection list ->
  string ->
  unit
