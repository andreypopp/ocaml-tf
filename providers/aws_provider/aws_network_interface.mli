(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_interface__attachment
type aws_network_interface

val aws_network_interface :
  ?description:string ->
  ?id:string ->
  ?interface_type:string ->
  ?ipv4_prefix_count:float ->
  ?ipv4_prefixes:string list ->
  ?ipv6_address_count:float ->
  ?ipv6_address_list:string list ->
  ?ipv6_address_list_enabled:bool ->
  ?ipv6_addresses:string list ->
  ?ipv6_prefix_count:float ->
  ?ipv6_prefixes:string list ->
  ?private_ip:string ->
  ?private_ip_list:string list ->
  ?private_ip_list_enabled:bool ->
  ?private_ips:string list ->
  ?private_ips_count:float ->
  ?security_groups:string list ->
  ?source_dest_check:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  subnet_id:string ->
  attachment:aws_network_interface__attachment list ->
  string ->
  unit
