(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_default_vpc_dhcp_options

val aws_default_vpc_dhcp_options :
  ?id:string prop ->
  ?owner_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_default_vpc_dhcp_options

val yojson_of_aws_default_vpc_dhcp_options :
  aws_default_vpc_dhcp_options -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  domain_name_servers : string prop;
  id : string prop;
  ipv6_address_preferred_lease_time : string prop;
  netbios_name_servers : string prop;
  netbios_node_type : string prop;
  ntp_servers : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  ?owner_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
