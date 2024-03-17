(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_file_system__lifecycle_policy
type aws_efs_file_system__protection

type aws_efs_file_system__size_in_bytes = {
  value : float;  (** value *)
  value_in_ia : float;  (** value_in_ia *)
  value_in_standard : float;  (** value_in_standard *)
}
[@@deriving yojson_of]

type aws_efs_file_system

val aws_efs_file_system :
  ?provisioned_throughput_in_mibps:float ->
  ?tags:(string * string) list ->
  ?throughput_mode:string ->
  lifecycle_policy:aws_efs_file_system__lifecycle_policy list ->
  protection:aws_efs_file_system__protection list ->
  string ->
  unit
