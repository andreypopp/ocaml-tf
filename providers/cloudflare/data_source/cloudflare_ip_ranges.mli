(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_ip_ranges

val cloudflare_ip_ranges :
  ?id:string prop -> unit -> cloudflare_ip_ranges

val yojson_of_cloudflare_ip_ranges : cloudflare_ip_ranges -> json

(** RESOURCE REGISTRATION *)

type t = private {
  china_ipv4_cidr_blocks : string list prop;
  china_ipv6_cidr_blocks : string list prop;
  cidr_blocks : string list prop;
  id : string prop;
  ipv4_cidr_blocks : string list prop;
  ipv6_cidr_blocks : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
