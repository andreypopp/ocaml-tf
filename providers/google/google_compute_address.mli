(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_address__timeouts
type google_compute_address

type t = private {
  address : string prop;
  address_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_version : string prop;
  ipv6_endpoint_type : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  self_link : string prop;
  subnetwork : string prop;
  terraform_labels : (string * string) list prop;
  users : string list prop;
}

val google_compute_address :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?ipv6_endpoint_type:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?network_tier:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:google_compute_address__timeouts ->
  name:string prop ->
  string ->
  t
