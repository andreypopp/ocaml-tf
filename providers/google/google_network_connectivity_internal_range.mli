(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_connectivity_internal_range

val google_network_connectivity_internal_range :
  ?description:string prop ->
  ?id:string prop ->
  ?ip_cidr_range:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?overlaps:string prop list ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?target_cidr_range:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  peering:string prop ->
  usage:string prop ->
  unit ->
  google_network_connectivity_internal_range

val yojson_of_google_network_connectivity_internal_range :
  google_network_connectivity_internal_range -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  ip_cidr_range : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  network : string prop;
  overlaps : string list prop;
  peering : string prop;
  prefix_length : float prop;
  project : string prop;
  target_cidr_range : string list prop;
  terraform_labels : string Tf_core.assoc prop;
  usage : string prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_cidr_range:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?overlaps:string prop list ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?target_cidr_range:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  peering:string prop ->
  usage:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?ip_cidr_range:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?overlaps:string prop list ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?target_cidr_range:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  peering:string prop ->
  usage:string prop ->
  string ->
  t Tf_core.resource
