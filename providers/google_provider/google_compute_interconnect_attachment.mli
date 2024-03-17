(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_interconnect_attachment__timeouts

type google_compute_interconnect_attachment__private_interconnect_info = {
  tag8021q : float;  (** tag8021q *)
}

type google_compute_interconnect_attachment

val google_compute_interconnect_attachment :
  ?admin_enabled:bool ->
  ?bandwidth:string ->
  ?candidate_subnets:string list ->
  ?description:string ->
  ?edge_availability_domain:string ->
  ?encryption:string ->
  ?id:string ->
  ?interconnect:string ->
  ?ipsec_internal_addresses:string list ->
  ?mtu:string ->
  ?project:string ->
  ?region:string ->
  ?stack_type:string ->
  ?type_:string ->
  ?vlan_tag8021q:float ->
  ?timeouts:google_compute_interconnect_attachment__timeouts ->
  name:string ->
  router:string ->
  string ->
  unit
