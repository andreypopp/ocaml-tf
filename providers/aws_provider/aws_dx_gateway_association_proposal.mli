(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_gateway_association_proposal

val aws_dx_gateway_association_proposal :
  ?allowed_prefixes:string list ->
  ?id:string ->
  associated_gateway_id:string ->
  dx_gateway_id:string ->
  dx_gateway_owner_account_id:string ->
  string ->
  unit
