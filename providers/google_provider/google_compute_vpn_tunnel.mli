(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_vpn_tunnel__timeouts
type google_compute_vpn_tunnel

val google_compute_vpn_tunnel :
  ?description:string ->
  ?ike_version:float ->
  ?labels:(string * string) list ->
  ?peer_external_gateway:string ->
  ?peer_external_gateway_interface:float ->
  ?peer_gcp_gateway:string ->
  ?router:string ->
  ?target_vpn_gateway:string ->
  ?vpn_gateway:string ->
  ?vpn_gateway_interface:float ->
  ?timeouts:google_compute_vpn_tunnel__timeouts ->
  name:string ->
  shared_secret:string ->
  string ->
  unit
