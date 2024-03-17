(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_key__timeouts
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?xks_key_id:string prop ->
  ?timeouts:aws_kms_key__timeouts ->
  string ->
  unit
