(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_service__timeouts

type aws_vpc_endpoint_service__private_dns_name_configuration = {
  name : string;  (** name *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_vpc_endpoint_service

val aws_vpc_endpoint_service :
  ?gateway_load_balancer_arns:string list ->
  ?network_load_balancer_arns:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_vpc_endpoint_service__timeouts ->
  acceptance_required:bool ->
  string ->
  unit
