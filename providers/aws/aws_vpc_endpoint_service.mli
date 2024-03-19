(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type private_dns_name_configuration = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  acceptance_required:bool prop ->
  unit ->
  aws_vpc_endpoint_service

val yojson_of_aws_vpc_endpoint_service :
  aws_vpc_endpoint_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  acceptance_required : bool prop;
  allowed_principals : string list prop;
  arn : string prop;
  availability_zones : string list prop;
  base_endpoint_dns_names : string list prop;
  gateway_load_balancer_arns : string list prop;
  id : string prop;
  manages_vpc_endpoints : bool prop;
  network_load_balancer_arns : string list prop;
  private_dns_name : string prop;
  private_dns_name_configuration :
    private_dns_name_configuration list prop;
  service_name : string prop;
  service_type : string prop;
  state : string prop;
  supported_ip_address_types : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_principals:string prop list ->
  ?gateway_load_balancer_arns:string prop list ->
  ?id:string prop ->
  ?network_load_balancer_arns:string prop list ->
  ?private_dns_name:string prop ->
  ?supported_ip_address_types:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  acceptance_required:bool prop ->
  string ->
  t
