(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_project_default_network_tier__timeouts
type google_compute_project_default_network_tier

type t = private {
  id : string prop;
  network_tier : string prop;
  project : string prop;
}

val google_compute_project_default_network_tier :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_project_default_network_tier__timeouts ->
  network_tier:string prop ->
  string ->
  t
