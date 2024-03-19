(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_efs_file_system_policy

val aws_efs_file_system_policy :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?id:string prop ->
  file_system_id:string prop ->
  policy:string prop ->
  unit ->
  aws_efs_file_system_policy

val yojson_of_aws_efs_file_system_policy :
  aws_efs_file_system_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bypass_policy_lockout_safety_check : bool prop;
  file_system_id : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?id:string prop ->
  file_system_id:string prop ->
  policy:string prop ->
  string ->
  t
