(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_file_system_policy

type t = private {
  bypass_policy_lockout_safety_check : bool prop;
  file_system_id : string prop;
  id : string prop;
  policy : string prop;
}

val aws_efs_file_system_policy :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?id:string prop ->
  file_system_id:string prop ->
  policy:string prop ->
  string ->
  t
