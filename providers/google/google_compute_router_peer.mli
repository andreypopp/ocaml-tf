(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advertised_ip_ranges

val advertised_ip_ranges :
  ?description:string prop ->
  range:string prop ->
  unit ->
  advertised_ip_ranges

type bfd

val bfd :
  ?min_receive_interval:float prop ->
  ?min_transmit_interval:float prop ->
  ?multiplier:float prop ->
  session_initialization_mode:string prop ->
  unit ->
  bfd

type md5_authentication_key

val md5_authentication_key :
  key:string prop ->
  name:string prop ->
  unit ->
  md5_authentication_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_router_peer

val google_compute_router_peer :
  ?advertise_mode:string prop ->
  ?advertised_groups:string prop list ->
  ?advertised_route_priority:float prop ->
  ?enable:bool prop ->
  ?enable_ipv6:bool prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ipv6_nexthop_address:string prop ->
  ?peer_ip_address:string prop ->
  ?peer_ipv6_nexthop_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?router_appliance_instance:string prop ->
  ?advertised_ip_ranges:advertised_ip_ranges list ->
  ?bfd:bfd list ->
  ?md5_authentication_key:md5_authentication_key list ->
  ?timeouts:timeouts ->
  interface:string prop ->
  name:string prop ->
  peer_asn:float prop ->
  router:string prop ->
  unit ->
  google_compute_router_peer

val yojson_of_google_compute_router_peer :
  google_compute_router_peer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  advertise_mode : string prop;
  advertised_groups : string list prop;
  advertised_route_priority : float prop;
  enable : bool prop;
  enable_ipv6 : bool prop;
  id : string prop;
  interface : string prop;
  ip_address : string prop;
  ipv6_nexthop_address : string prop;
  management_type : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip_address : string prop;
  peer_ipv6_nexthop_address : string prop;
  project : string prop;
  region : string prop;
  router : string prop;
  router_appliance_instance : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?advertise_mode:string prop ->
  ?advertised_groups:string prop list ->
  ?advertised_route_priority:float prop ->
  ?enable:bool prop ->
  ?enable_ipv6:bool prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ipv6_nexthop_address:string prop ->
  ?peer_ip_address:string prop ->
  ?peer_ipv6_nexthop_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?router_appliance_instance:string prop ->
  ?advertised_ip_ranges:advertised_ip_ranges list ->
  ?bfd:bfd list ->
  ?md5_authentication_key:md5_authentication_key list ->
  ?timeouts:timeouts ->
  interface:string prop ->
  name:string prop ->
  peer_asn:float prop ->
  router:string prop ->
  string ->
  t

val make :
  ?advertise_mode:string prop ->
  ?advertised_groups:string prop list ->
  ?advertised_route_priority:float prop ->
  ?enable:bool prop ->
  ?enable_ipv6:bool prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ipv6_nexthop_address:string prop ->
  ?peer_ip_address:string prop ->
  ?peer_ipv6_nexthop_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?router_appliance_instance:string prop ->
  ?advertised_ip_ranges:advertised_ip_ranges list ->
  ?bfd:bfd list ->
  ?md5_authentication_key:md5_authentication_key list ->
  ?timeouts:timeouts ->
  interface:string prop ->
  name:string prop ->
  peer_asn:float prop ->
  router:string prop ->
  string ->
  t Tf_core.resource
