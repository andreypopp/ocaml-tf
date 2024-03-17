(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_subnet__timeouts
type aws_default_subnet

val aws_default_subnet :
  ?assign_ipv6_address_on_creation:bool ->
  ?customer_owned_ipv4_pool:string ->
  ?enable_dns64:bool ->
  ?enable_resource_name_dns_a_record_on_launch:bool ->
  ?enable_resource_name_dns_aaaa_record_on_launch:bool ->
  ?force_destroy:bool ->
  ?ipv6_native:bool ->
  ?map_customer_owned_ip_on_launch:bool ->
  ?map_public_ip_on_launch:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_default_subnet__timeouts ->
  availability_zone:string ->
  string ->
  unit
