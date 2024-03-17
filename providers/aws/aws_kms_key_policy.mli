(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_key_policy

type t = private {
  bypass_policy_lockout_safety_check : bool prop;
  id : string prop;
  key_id : string prop;
  policy : string prop;
}

val aws_kms_key_policy :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?id:string prop ->
  key_id:string prop ->
  policy:string prop ->
  string ->
  t
