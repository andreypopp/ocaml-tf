(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_netblock_ip_ranges

val google_netblock_ip_ranges :
  ?id:string prop ->
  ?range_type:string prop ->
  unit ->
  google_netblock_ip_ranges

val yojson_of_google_netblock_ip_ranges :
  google_netblock_ip_ranges -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cidr_blocks : string list prop;
  cidr_blocks_ipv4 : string list prop;
  cidr_blocks_ipv6 : string list prop;
  id : string prop;
  range_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?range_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?range_type:string prop ->
  string ->
  t Tf_core.resource
