(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpn_gateway_attachment

type t = private {
  id : string prop;
  vpc_id : string prop;
  vpn_gateway_id : string prop;
}

val aws_vpn_gateway_attachment :
  ?id:string prop ->
  vpc_id:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t
