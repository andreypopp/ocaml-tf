(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  name:string prop ->
  shared_secret:string prop ->
  unit ->
  google_compute_vpn_tunnel

val yojson_of_google_compute_vpn_tunnel :
  google_compute_vpn_tunnel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  detailed_status : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ike_version : float prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  local_traffic_selector : string list prop;
  name : string prop;
  peer_external_gateway : string prop;
  peer_external_gateway_interface : float prop;
  peer_gcp_gateway : string prop;
  peer_ip : string prop;
  project : string prop;
  region : string prop;
  remote_traffic_selector : string list prop;
  router : string prop;
  self_link : string prop;
  shared_secret : string prop;
  shared_secret_hash : string prop;
  target_vpn_gateway : string prop;
  terraform_labels : (string * string) list prop;
  tunnel_id : string prop;
  vpn_gateway : string prop;
  vpn_gateway_interface : float prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  name:string prop ->
  shared_secret:string prop ->
  string ->
  t
