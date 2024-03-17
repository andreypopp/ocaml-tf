(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpn_connection_route

type t = private {
  destination_cidr_block : string prop;
  id : string prop;
  vpn_connection_id : string prop;
}

val aws_vpn_connection_route :
  ?id:string prop ->
  destination_cidr_block:string prop ->
  vpn_connection_id:string prop ->
  string ->
  t
