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

type subnet_configuration

val subnet_configuration :
  ?ipv4:string prop ->
  ?ipv6:string prop ->
  ?subnet_id:string prop ->
  unit ->
  subnet_configuration

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_type:string prop ->
  ?dns_options:dns_options list ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  vpc_id:string prop ->
  subnet_configuration:subnet_configuration list ->
  unit ->
  aws_vpc_endpoint

val yojson_of_aws_vpc_endpoint : aws_vpc_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_type:string prop ->
  ?dns_options:dns_options list ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  vpc_id:string prop ->
  subnet_configuration:subnet_configuration list ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_type:string prop ->
  ?dns_options:dns_options list ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  vpc_id:string prop ->
  subnet_configuration:subnet_configuration list ->
  string ->
  t Tf_core.resource
