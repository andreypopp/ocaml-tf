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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  virtual_interface_id:string prop ->
  unit ->
  aws_dx_hosted_private_virtual_interface_accepter

val yojson_of_aws_dx_hosted_private_virtual_interface_accepter :
  aws_dx_hosted_private_virtual_interface_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_interface_id : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  virtual_interface_id:string prop ->
  string ->
  t

val make :
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  virtual_interface_id:string prop ->
  string ->
  t Tf_core.resource
