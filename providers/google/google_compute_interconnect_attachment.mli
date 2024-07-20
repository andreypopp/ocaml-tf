(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_interconnect_info = {
  tag8021q : float prop;  (** tag8021q *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_interconnect_attachment

val google_compute_interconnect_attachment :
  ?admin_enabled:bool prop ->
  ?bandwidth:string prop ->
  ?candidate_subnets:string prop list ->
  ?description:string prop ->
  ?edge_availability_domain:string prop ->
  ?encryption:string prop ->
  ?id:string prop ->
  ?interconnect:string prop ->
  ?ipsec_internal_addresses:string prop list ->
  ?mtu:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?stack_type:string prop ->
  ?subnet_length:float prop ->
  ?type_:string prop ->
  ?vlan_tag8021q:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  unit ->
  google_compute_interconnect_attachment

val yojson_of_google_compute_interconnect_attachment :
  google_compute_interconnect_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_enabled : bool prop;
  bandwidth : string prop;
  candidate_subnets : string list prop;
  cloud_router_ip_address : string prop;
  cloud_router_ipv6_address : string prop;
  creation_timestamp : string prop;
  customer_router_ip_address : string prop;
  customer_router_ipv6_address : string prop;
  description : string prop;
  edge_availability_domain : string prop;
  encryption : string prop;
  google_reference_id : string prop;
  id : string prop;
  interconnect : string prop;
  ipsec_internal_addresses : string list prop;
  mtu : string prop;
  name : string prop;
  pairing_key : string prop;
  partner_asn : string prop;
  private_interconnect_info : private_interconnect_info list prop;
  project : string prop;
  region : string prop;
  router : string prop;
  self_link : string prop;
  stack_type : string prop;
  state : string prop;
  subnet_length : float prop;
  type_ : string prop;
  vlan_tag8021q : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin_enabled:bool prop ->
  ?bandwidth:string prop ->
  ?candidate_subnets:string prop list ->
  ?description:string prop ->
  ?edge_availability_domain:string prop ->
  ?encryption:string prop ->
  ?id:string prop ->
  ?interconnect:string prop ->
  ?ipsec_internal_addresses:string prop list ->
  ?mtu:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?stack_type:string prop ->
  ?subnet_length:float prop ->
  ?type_:string prop ->
  ?vlan_tag8021q:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  string ->
  t

val make :
  ?admin_enabled:bool prop ->
  ?bandwidth:string prop ->
  ?candidate_subnets:string prop list ->
  ?description:string prop ->
  ?edge_availability_domain:string prop ->
  ?encryption:string prop ->
  ?id:string prop ->
  ?interconnect:string prop ->
  ?ipsec_internal_addresses:string prop list ->
  ?mtu:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?stack_type:string prop ->
  ?subnet_length:float prop ->
  ?type_:string prop ->
  ?vlan_tag8021q:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  string ->
  t Tf_core.resource
