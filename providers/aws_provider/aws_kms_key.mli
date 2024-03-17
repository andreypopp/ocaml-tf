(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_key__timeouts
type aws_kms_key

val aws_kms_key :
  ?bypass_policy_lockout_safety_check:bool ->
  ?custom_key_store_id:string ->
  ?customer_master_key_spec:string ->
  ?deletion_window_in_days:float ->
  ?description:string ->
  ?enable_key_rotation:bool ->
  ?id:string ->
  ?is_enabled:bool ->
  ?key_usage:string ->
  ?multi_region:bool ->
  ?policy:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?xks_key_id:string ->
  ?timeouts:aws_kms_key__timeouts ->
  string ->
  unit
