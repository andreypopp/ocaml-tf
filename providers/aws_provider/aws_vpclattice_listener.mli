(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_listener__default_action__fixed_response
type aws_vpclattice_listener__default_action__forward__target_groups
type aws_vpclattice_listener__default_action__forward
type aws_vpclattice_listener__default_action
type aws_vpclattice_listener__timeouts
type aws_vpclattice_listener

val aws_vpclattice_listener :
  ?id:string ->
  ?port:float ->
  ?service_arn:string ->
  ?service_identifier:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpclattice_listener__timeouts ->
  name:string ->
  protocol:string ->
  default_action:aws_vpclattice_listener__default_action list ->
  string ->
  unit
