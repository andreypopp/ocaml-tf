(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_networkmanager_transit_gateway_registration

val aws_networkmanager_transit_gateway_registration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  transit_gateway_arn:string prop ->
  unit ->
  aws_networkmanager_transit_gateway_registration

val yojson_of_aws_networkmanager_transit_gateway_registration :
  aws_networkmanager_transit_gateway_registration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  global_network_id : string prop;
  id : string prop;
  transit_gateway_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  transit_gateway_arn:string prop ->
  string ->
  t
