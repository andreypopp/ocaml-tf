(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_vpn_tunnel__timeouts
type google_compute_vpn_tunnel

val google_compute_vpn_tunnel :
  ?description:string prop ->
  ?id:string prop ->
  ?ike_version:float prop ->
  ?labels:(string * string prop) list ->
  ?local_traffic_selector:string prop list ->
  ?peer_external_gateway:string prop ->
  ?peer_external_gateway_interface:float prop ->
  ?peer_gcp_gateway:string prop ->
  ?peer_ip:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?remote_traffic_selector:string prop list ->
  ?router:string prop ->
  ?target_vpn_gateway:string prop ->
  ?vpn_gateway:string prop ->
  ?vpn_gateway_interface:float prop ->
  ?timeouts:google_compute_vpn_tunnel__timeouts ->
  name:string prop ->
  shared_secret:string prop ->
  string ->
  unit
