(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_network_endpoint_group__timeouts
type google_compute_global_network_endpoint_group

type t = private {
  default_port : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  self_link : string prop;
}

val google_compute_global_network_endpoint_group :
  ?default_port:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_global_network_endpoint_group__timeouts ->
  name:string prop ->
  network_endpoint_type:string prop ->
  string ->
  t
