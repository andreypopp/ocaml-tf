(** Creates an Okta Network Zone. This resource allows you to create and configure an Okta Network Zone. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_network_zone

val okta_network_zone :
  ?asns:string prop list ->
  ?dynamic_locations:string prop list ->
  ?dynamic_proxy_type:string prop ->
  ?gateways:string prop list ->
  ?id:string prop ->
  ?proxies:string prop list ->
  ?status:string prop ->
  ?usage:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  okta_network_zone

val yojson_of_okta_network_zone : okta_network_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  asns : string list prop;
  dynamic_locations : string list prop;
  dynamic_proxy_type : string prop;
  gateways : string list prop;
  id : string prop;
  name : string prop;
  proxies : string list prop;
  status : string prop;
  type_ : string prop;
  usage : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?asns:string prop list ->
  ?dynamic_locations:string prop list ->
  ?dynamic_proxy_type:string prop ->
  ?gateways:string prop list ->
  ?id:string prop ->
  ?proxies:string prop list ->
  ?status:string prop ->
  ?usage:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?asns:string prop list ->
  ?dynamic_locations:string prop list ->
  ?dynamic_proxy_type:string prop ->
  ?gateways:string prop list ->
  ?id:string prop ->
  ?proxies:string prop list ->
  ?status:string prop ->
  ?usage:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
