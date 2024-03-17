(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_external_key

val aws_kms_external_key :
  ?bypass_policy_lockout_safety_check:bool ->
  ?deletion_window_in_days:float ->
  ?description:string ->
  ?key_material_base64:string ->
  ?tags:(string * string) list ->
  ?valid_to:string ->
  string ->
  unit
