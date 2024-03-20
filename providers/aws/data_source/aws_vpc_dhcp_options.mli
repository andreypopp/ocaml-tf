(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpc_dhcp_options

val aws_vpc_dhcp_options :
  ?dhcp_options_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_vpc_dhcp_options

val yojson_of_aws_vpc_dhcp_options : aws_vpc_dhcp_options -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  dhcp_options_id : string prop;
  domain_name : string prop;
  domain_name_servers : string list prop;
  id : string prop;
  netbios_name_servers : string list prop;
  netbios_node_type : string prop;
  ntp_servers : string list prop;
  owner_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?dhcp_options_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?dhcp_options_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
