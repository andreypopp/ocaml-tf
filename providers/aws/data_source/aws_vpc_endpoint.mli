(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_entry = {
  dns_name : string prop;  (** dns_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}

type dns_options = {
  dns_record_ip_type : string prop;  (** dns_record_ip_type *)
  private_dns_only_for_inbound_resolver_endpoint : bool prop;
      (** private_dns_only_for_inbound_resolver_endpoint *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpc_endpoint

val aws_vpc_endpoint :
  ?id:string prop ->
  ?service_name:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_vpc_endpoint

val yojson_of_aws_vpc_endpoint : aws_vpc_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cidr_blocks : string list prop;
  dns_entry : dns_entry list prop;
  dns_options : dns_options list prop;
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
  vpc_endpoint_type : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?service_name:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?service_name:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
