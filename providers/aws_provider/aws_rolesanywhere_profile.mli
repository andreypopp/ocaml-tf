(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rolesanywhere_profile

val aws_rolesanywhere_profile :
  ?enabled:bool ->
  ?managed_policy_arns:string list ->
  ?require_instance_properties:bool ->
  ?session_policy:string ->
  ?tags:(string * string) list ->
  name:string ->
  role_arns:string list ->
  string ->
  unit
