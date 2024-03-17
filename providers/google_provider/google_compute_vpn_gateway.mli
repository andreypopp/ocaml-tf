(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_vpn_gateway__timeouts
type google_compute_vpn_gateway

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  gateway_id : float prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val google_compute_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_vpn_gateway__timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  t
