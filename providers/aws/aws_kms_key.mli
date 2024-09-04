(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_kms_key

val aws_kms_key :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?custom_key_store_id:string prop ->
  ?customer_master_key_spec:string prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enable_key_rotation:bool prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?key_usage:string prop ->
  ?multi_region:bool prop ->
  ?policy:string prop ->
  ?rotation_period_in_days:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?xks_key_id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_kms_key

val yojson_of_aws_kms_key : aws_kms_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  custom_key_store_id : string prop;
  customer_master_key_spec : string prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enable_key_rotation : bool prop;
  id : string prop;
  is_enabled : bool prop;
  key_id : string prop;
  key_usage : string prop;
  multi_region : bool prop;
  policy : string prop;
  rotation_period_in_days : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  xks_key_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?custom_key_store_id:string prop ->
  ?customer_master_key_spec:string prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enable_key_rotation:bool prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?key_usage:string prop ->
  ?multi_region:bool prop ->
  ?policy:string prop ->
  ?rotation_period_in_days:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?xks_key_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?custom_key_store_id:string prop ->
  ?customer_master_key_spec:string prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enable_key_rotation:bool prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?key_usage:string prop ->
  ?multi_region:bool prop ->
  ?policy:string prop ->
  ?rotation_period_in_days:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?xks_key_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
