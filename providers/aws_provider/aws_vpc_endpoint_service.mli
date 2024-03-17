(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_service__timeouts

type aws_vpc_endpoint_service__private_dns_name_configuration = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type aws_vpc_endpoint_service

val aws_vpc_endpoint_service :
  ?allowed_principals:string prop list ->
  ?gateway_load_balancer_arns:string prop list ->
  ?id:string prop ->
  ?network_load_balancer_arns:string prop list ->
  ?private_dns_name:string prop ->
  ?supported_ip_address_types:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_endpoint_service__timeouts ->
  acceptance_required:bool prop ->
  string ->
  unit
