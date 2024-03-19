(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_vpn_gateway_attachment

val aws_vpn_gateway_attachment :
  ?id:string prop ->
  vpc_id:string prop ->
  vpn_gateway_id:string prop ->
  unit ->
  aws_vpn_gateway_attachment

val yojson_of_aws_vpn_gateway_attachment :
  aws_vpn_gateway_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  vpc_id : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  vpc_id:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t
