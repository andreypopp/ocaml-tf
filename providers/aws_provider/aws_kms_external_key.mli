(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_external_key

val aws_kms_external_key :
  ?bypass_policy_lockout_safety_check:bool prop ->
  ?deletion_window_in_days:float prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?key_material_base64:string prop ->
  ?multi_region:bool prop ->
  ?policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?valid_to:string prop ->
  string ->
  unit
