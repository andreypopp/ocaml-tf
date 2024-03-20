(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dx_hosted_transit_virtual_interface_accepter

val aws_dx_hosted_transit_virtual_interface_accepter :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  dx_gateway_id:string prop ->
  virtual_interface_id:string prop ->
  unit ->
  aws_dx_hosted_transit_virtual_interface_accepter

val yojson_of_aws_dx_hosted_transit_virtual_interface_accepter :
  aws_dx_hosted_transit_virtual_interface_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_interface_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  dx_gateway_id:string prop ->
  virtual_interface_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  dx_gateway_id:string prop ->
  virtual_interface_id:string prop ->
  string ->
  t Tf_core.resource
