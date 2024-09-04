(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attachment

val attachment :
  device_index:float prop ->
  instance:string prop ->
  unit ->
  attachment

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  subnet_id:string prop ->
  attachment:attachment list ->
  unit ->
  aws_network_interface

val yojson_of_aws_network_interface : aws_network_interface -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  interface_type : string prop;
  ipv4_prefix_count : float prop;
  ipv4_prefixes : string list prop;
  ipv6_address_count : float prop;
  ipv6_address_list : string list prop;
  ipv6_address_list_enabled : bool prop;
  ipv6_addresses : string list prop;
  ipv6_prefix_count : float prop;
  ipv6_prefixes : string list prop;
  mac_address : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  private_dns_name : string prop;
  private_ip : string prop;
  private_ip_list : string list prop;
  private_ip_list_enabled : bool prop;
  private_ips : string list prop;
  private_ips_count : float prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  subnet_id:string prop ->
  attachment:attachment list ->
  string ->
  t

val make :
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  subnet_id:string prop ->
  attachment:attachment list ->
  string ->
  t Tf_core.resource
