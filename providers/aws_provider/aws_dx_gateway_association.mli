(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_gateway_association__timeouts
type aws_dx_gateway_association

val aws_dx_gateway_association :
  ?proposal_id:string ->
  ?vpn_gateway_id:string ->
  ?timeouts:aws_dx_gateway_association__timeouts ->
  dx_gateway_id:string ->
  string ->
  unit
