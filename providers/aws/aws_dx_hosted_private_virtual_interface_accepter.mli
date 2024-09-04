(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dx_hosted_private_virtual_interface_accepter

val aws_dx_hosted_private_virtual_interface_accepter :
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  virtual_interface_id:string prop ->
  unit ->
  aws_dx_hosted_private_virtual_interface_accepter

val yojson_of_aws_dx_hosted_private_virtual_interface_accepter :
  aws_dx_hosted_private_virtual_interface_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  virtual_interface_id : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  virtual_interface_id:string prop ->
  string ->
  t

val make :
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  virtual_interface_id:string prop ->
  string ->
  t Tf_core.resource
