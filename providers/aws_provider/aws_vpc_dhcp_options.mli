(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_dhcp_options

type t = private {
  arn : string prop;
  domain_name : string prop;
  domain_name_servers : string list prop;
  id : string prop;
  netbios_name_servers : string list prop;
  netbios_node_type : string prop;
  ntp_servers : string list prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpc_dhcp_options :
  ?domain_name:string prop ->
  ?domain_name_servers:string prop list ->
  ?id:string prop ->
  ?netbios_name_servers:string prop list ->
  ?netbios_node_type:string prop ->
  ?ntp_servers:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
