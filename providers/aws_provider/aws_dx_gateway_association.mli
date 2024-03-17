(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_gateway_association__timeouts
type aws_dx_gateway_association

val aws_dx_gateway_association :
  ?allowed_prefixes:string list ->
  ?associated_gateway_id:string ->
  ?associated_gateway_owner_account_id:string ->
  ?id:string ->
  ?proposal_id:string ->
  ?vpn_gateway_id:string ->
  ?timeouts:aws_dx_gateway_association__timeouts ->
  dx_gateway_id:string ->
  string ->
  unit
