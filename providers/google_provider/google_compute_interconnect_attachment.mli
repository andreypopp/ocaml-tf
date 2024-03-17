(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_interconnect_attachment__timeouts

type google_compute_interconnect_attachment__private_interconnect_info = {
  tag8021q : float;  (** tag8021q *)
}
[@@deriving yojson_of]

type google_compute_interconnect_attachment

val google_compute_interconnect_attachment :
  ?admin_enabled:bool ->
  ?candidate_subnets:string list ->
  ?description:string ->
  ?encryption:string ->
  ?interconnect:string ->
  ?ipsec_internal_addresses:string list ->
  ?timeouts:google_compute_interconnect_attachment__timeouts ->
  name:string ->
  router:string ->
  string ->
  unit
