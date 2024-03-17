(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_org_policy_custom_constraint__timeouts
type google_org_policy_custom_constraint

val google_org_policy_custom_constraint :
  ?description:string ->
  ?display_name:string ->
  ?timeouts:google_org_policy_custom_constraint__timeouts ->
  action_type:string ->
  condition:string ->
  method_types:string list ->
  name:string ->
  parent:string ->
  resource_types:string list ->
  string ->
  unit
