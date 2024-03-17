(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_service__timeouts

type aws_vpc_endpoint_service__private_dns_name_configuration = {
  name : string;  (** name *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}

type aws_vpc_endpoint_service

val aws_vpc_endpoint_service :
  ?allowed_principals:string list ->
  ?gateway_load_balancer_arns:string list ->
  ?id:string ->
  ?network_load_balancer_arns:string list ->
  ?private_dns_name:string ->
  ?supported_ip_address_types:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpc_endpoint_service__timeouts ->
  acceptance_required:bool ->
  string ->
  unit
