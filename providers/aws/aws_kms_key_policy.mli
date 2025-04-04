(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kms_key_policy

val aws_kms_key_policy :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?id:string prop ->
  key_id:string prop ->
  policy:string prop ->
  unit ->
  aws_kms_key_policy

val yojson_of_aws_kms_key_policy : aws_kms_key_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bypass_policy_lockout_safety_check : bool prop;
  id : string prop;
  key_id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?id:string prop ->
  key_id:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?id:string prop ->
  key_id:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
