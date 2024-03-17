(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_subnet__timeouts
type aws_subnet

val aws_subnet :
  ?assign_ipv6_address_on_creation:bool ->
  ?availability_zone:string ->
  ?availability_zone_id:string ->
  ?cidr_block:string ->
  ?customer_owned_ipv4_pool:string ->
  ?enable_dns64:bool ->
  ?enable_lni_at_device_index:float ->
  ?enable_resource_name_dns_a_record_on_launch:bool ->
  ?enable_resource_name_dns_aaaa_record_on_launch:bool ->
  ?id:string ->
  ?ipv6_cidr_block:string ->
  ?ipv6_native:bool ->
  ?map_customer_owned_ip_on_launch:bool ->
  ?map_public_ip_on_launch:bool ->
  ?outpost_arn:string ->
  ?private_dns_hostname_type_on_launch:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_subnet__timeouts ->
  vpc_id:string ->
  string ->
  unit
