(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_interface__attachment
type aws_network_interface

val aws_network_interface :
  ?description:string prop ->
  ?id:string prop ->
  ?interface_type:string prop ->
  ?ipv4_prefix_count:float prop ->
  ?ipv4_prefixes:string prop list ->
  ?ipv6_address_count:float prop ->
  ?ipv6_address_list:string prop list ->
  ?ipv6_address_list_enabled:bool prop ->
  ?ipv6_addresses:string prop list ->
  ?ipv6_prefix_count:float prop ->
  ?ipv6_prefixes:string prop list ->
  ?private_ip:string prop ->
  ?private_ip_list:string prop list ->
  ?private_ip_list_enabled:bool prop ->
  ?private_ips:string prop list ->
  ?private_ips_count:float prop ->
  ?security_groups:string prop list ->
  ?source_dest_check:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  subnet_id:string prop ->
  attachment:aws_network_interface__attachment list ->
  string ->
  unit
