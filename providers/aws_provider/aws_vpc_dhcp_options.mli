(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_dhcp_options

val aws_vpc_dhcp_options :
  ?domain_name:string ->
  ?domain_name_servers:string list ->
  ?id:string ->
  ?netbios_name_servers:string list ->
  ?netbios_node_type:string ->
  ?ntp_servers:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  string ->
  unit
