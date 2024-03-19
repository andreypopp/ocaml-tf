(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?redundancy_type:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  interface:interface list ->
  unit ->
  google_compute_external_vpn_gateway

val yojson_of_google_compute_external_vpn_gateway :
  google_compute_external_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  redundancy_type : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?redundancy_type:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  interface:interface list ->
  string ->
  t
