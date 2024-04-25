(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_entry = {
  dns_name : string prop;  (** dns_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}

type dns_options

val dns_options :
  ?dns_record_ip_type:string prop ->
  ?private_dns_only_for_inbound_resolver_endpoint:bool prop ->
  unit ->
  dns_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpc_endpoint

val aws_vpc_endpoint :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?policy:string prop ->
  ?private_dns_enabled:bool prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_endpoint_type:string prop ->
  ?dns_options:dns_options list ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  vpc_id:string prop ->
  unit ->
  aws_vpc_endpoint

val yojson_of_aws_vpc_endpoint : aws_vpc_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_accept : bool prop;
  cidr_blocks : string list prop;
  dns_entry : dns_entry list prop;
  id : string prop;
  ip_address_type : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  policy : string prop;
  prefix_list_id : string prop;
  private_dns_enabled : bool prop;
  requester_managed : bool prop;
  route_table_ids : string list prop;
  security_group_ids : string list prop;
  service_name : string prop;
  state : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_endpoint_type : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?policy:string prop ->
  ?private_dns_enabled:bool prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_endpoint_type:string prop ->
  ?dns_options:dns_options list ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?policy:string prop ->
  ?private_dns_enabled:bool prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_endpoint_type:string prop ->
  ?dns_options:dns_options list ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
