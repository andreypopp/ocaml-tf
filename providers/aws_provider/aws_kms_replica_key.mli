(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_replica_key

val aws_kms_replica_key :
  ?bypass_policy_lockout_safety_check:bool ->
  ?deletion_window_in_days:float ->
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?policy:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  primary_key_arn:string ->
  string ->
  unit
