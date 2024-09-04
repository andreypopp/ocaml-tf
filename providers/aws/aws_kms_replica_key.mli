(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kms_replica_key

val aws_kms_replica_key :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  primary_key_arn:string prop ->
  unit ->
  aws_kms_replica_key

val yojson_of_aws_kms_replica_key : aws_kms_replica_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  key_id : string prop;
  key_rotation_enabled : bool prop;
  key_spec : string prop;
  key_usage : string prop;
  policy : string prop;
  primary_key_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  primary_key_arn:string prop ->
  string ->
  t

val make :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  primary_key_arn:string prop ->
  string ->
  t Tf_core.resource
