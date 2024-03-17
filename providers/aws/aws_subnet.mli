(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_subnet__timeouts
type aws_subnet

type t = private {
  arn : string prop;
  assign_ipv6_address_on_creation : bool prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  cidr_block : string prop;
  customer_owned_ipv4_pool : string prop;
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val aws_subnet :
  ?assign_ipv6_address_on_creation:bool prop ->
  ?availability_zone:string prop ->
  ?availability_zone_id:string prop ->
  ?cidr_block:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?enable_dns64:bool prop ->
  ?enable_lni_at_device_index:float prop ->
  ?enable_resource_name_dns_a_record_on_launch:bool prop ->
  ?enable_resource_name_dns_aaaa_record_on_launch:bool prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?ipv6_native:bool prop ->
  ?map_customer_owned_ip_on_launch:bool prop ->
  ?map_public_ip_on_launch:bool prop ->
  ?outpost_arn:string prop ->
  ?private_dns_hostname_type_on_launch:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_subnet__timeouts ->
  vpc_id:string prop ->
  string ->
  t
