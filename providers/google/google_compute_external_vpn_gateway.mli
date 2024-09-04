(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type interface

val interface :
  ?id:float prop -> ?ip_address:string prop -> unit -> interface

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_external_vpn_gateway

val google_compute_external_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?redundancy_type:string prop ->
  ?interface:interface list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_external_vpn_gateway

val yojson_of_google_compute_external_vpn_gateway :
  google_compute_external_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  redundancy_type : string prop;
  self_link : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?redundancy_type:string prop ->
  ?interface:interface list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?redundancy_type:string prop ->
  ?interface:interface list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
