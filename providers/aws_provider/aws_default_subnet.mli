(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_subnet__timeouts
type aws_default_subnet

val aws_default_subnet :
  ?assign_ipv6_address_on_creation:bool prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?enable_dns64:bool prop ->
  ?enable_resource_name_dns_a_record_on_launch:bool prop ->
  ?enable_resource_name_dns_aaaa_record_on_launch:bool prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?ipv6_native:bool prop ->
  ?map_customer_owned_ip_on_launch:bool prop ->
  ?map_public_ip_on_launch:bool prop ->
  ?private_dns_hostname_type_on_launch:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_default_subnet__timeouts ->
  availability_zone:string prop ->
  string ->
  unit
