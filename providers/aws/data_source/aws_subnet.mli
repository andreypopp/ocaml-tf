(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_subnet

val aws_subnet :
  ?availability_zone:string prop ->
  ?availability_zone_id:string prop ->
  ?cidr_block:string prop ->
  ?default_for_az:bool prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_subnet

val yojson_of_aws_subnet : aws_subnet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  assign_ipv6_address_on_creation : bool prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  available_ip_address_count : float prop;
  cidr_block : string prop;
  customer_owned_ipv4_pool : string prop;
  default_for_az : bool prop;
  enable_dns64 : bool prop;
  enable_lni_at_device_index : float prop;
  enable_resource_name_dns_a_record_on_launch : bool prop;
  enable_resource_name_dns_aaaa_record_on_launch : bool prop;
  id : string prop;
  ipv6_cidr_block : string prop;
  ipv6_cidr_block_association_id : string prop;
  ipv6_native : bool prop;
  map_customer_owned_ip_on_launch : bool prop;
  map_public_ip_on_launch : bool prop;
  outpost_arn : string prop;
  owner_id : string prop;
  private_dns_hostname_type_on_launch : string prop;
  state : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone:string prop ->
  ?availability_zone_id:string prop ->
  ?cidr_block:string prop ->
  ?default_for_az:bool prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?availability_zone:string prop ->
  ?availability_zone_id:string prop ->
  ?cidr_block:string prop ->
  ?default_for_az:bool prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
