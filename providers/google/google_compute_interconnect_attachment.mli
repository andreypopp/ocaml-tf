(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_interconnect_attachment__timeouts

type google_compute_interconnect_attachment__private_interconnect_info = {
  tag8021q : float prop;  (** tag8021q *)
}

type google_compute_interconnect_attachment

type t = private {
  admin_enabled : bool prop;
  bandwidth : string prop;
  candidate_subnets : string list prop;
  cloud_router_ip_address : string prop;
  creation_timestamp : string prop;
  customer_router_ip_address : string prop;
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
  private_interconnect_info :
    google_compute_interconnect_attachment__private_interconnect_info
    list
    prop;
  project : string prop;
  region : string prop;
  router : string prop;
  self_link : string prop;
  stack_type : string prop;
  state : string prop;
  type_ : string prop;
  vlan_tag8021q : float prop;
}

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
  ?type_:string prop ->
  ?vlan_tag8021q:float prop ->
  ?timeouts:google_compute_interconnect_attachment__timeouts ->
  name:string prop ->
  router:string prop ->
  string ->
  t
