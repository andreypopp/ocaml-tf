(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_default_vpc_dhcp_options

val aws_default_vpc_dhcp_options :
  ?id:string prop ->
  ?owner_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?owner_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t Tf_core.resource
