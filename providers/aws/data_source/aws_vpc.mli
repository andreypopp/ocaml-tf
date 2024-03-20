(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cidr_block_associations = {
  association_id : string prop;  (** association_id *)
  cidr_block : string prop;  (** cidr_block *)
  state : string prop;  (** state *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpc

val aws_vpc :
  ?cidr_block:string prop ->
  ?default:bool prop ->
  ?dhcp_options_id:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_vpc

val yojson_of_aws_vpc : aws_vpc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cidr_block : string prop;
  cidr_block_associations : cidr_block_associations list prop;
  default : bool prop;
  dhcp_options_id : string prop;
  enable_dns_hostnames : bool prop;
  enable_dns_support : bool prop;
  enable_network_address_usage_metrics : bool prop;
  id : string prop;
  instance_tenancy : string prop;
  ipv6_association_id : string prop;
  ipv6_cidr_block : string prop;
  main_route_table_id : string prop;
  owner_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr_block:string prop ->
  ?default:bool prop ->
  ?dhcp_options_id:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?cidr_block:string prop ->
  ?default:bool prop ->
  ?dhcp_options_id:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
