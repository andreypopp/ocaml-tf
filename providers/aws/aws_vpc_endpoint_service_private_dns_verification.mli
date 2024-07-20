(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_vpc_endpoint_service_private_dns_verification

val aws_vpc_endpoint_service_private_dns_verification :
  ?wait_for_verification:bool prop ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  unit ->
  aws_vpc_endpoint_service_private_dns_verification

val yojson_of_aws_vpc_endpoint_service_private_dns_verification :
  aws_vpc_endpoint_service_private_dns_verification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  service_id : string prop;
  wait_for_verification : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?wait_for_verification:bool prop ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t

val make :
  ?wait_for_verification:bool prop ->
  ?timeouts:timeouts ->
  service_id:string prop ->
  string ->
  t Tf_core.resource
