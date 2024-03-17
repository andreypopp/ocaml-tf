(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_hosted_private_virtual_interface_accepter__timeouts
type aws_dx_hosted_private_virtual_interface_accepter

val aws_dx_hosted_private_virtual_interface_accepter :
  ?dx_gateway_id:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpn_gateway_id:string ->
  ?timeouts:
    aws_dx_hosted_private_virtual_interface_accepter__timeouts ->
  virtual_interface_id:string ->
  string ->
  unit
