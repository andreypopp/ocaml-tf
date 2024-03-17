(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_hosted_private_virtual_interface_accepter__timeouts
type aws_dx_hosted_private_virtual_interface_accepter

type t = private {
  arn : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_interface_id : string prop;
  vpn_gateway_id : string prop;
}

val aws_dx_hosted_private_virtual_interface_accepter :
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:
    aws_dx_hosted_private_virtual_interface_accepter__timeouts ->
  virtual_interface_id:string prop ->
  string ->
  t
