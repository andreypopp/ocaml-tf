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

type google_network_security_firewall_endpoint_association

val google_network_security_firewall_endpoint_association :
  ?disabled:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?parent:string prop ->
  ?tls_inspection_policy:string prop ->
  ?timeouts:timeouts ->
  firewall_endpoint:string prop ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_network_security_firewall_endpoint_association

val yojson_of_google_network_security_firewall_endpoint_association :
  google_network_security_firewall_endpoint_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  disabled : bool prop;
  effective_labels : string Tf_core.assoc prop;
  firewall_endpoint : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  network : string prop;
  parent : string prop;
  reconciling : bool prop;
  self_link : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  tls_inspection_policy : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?parent:string prop ->
  ?tls_inspection_policy:string prop ->
  ?timeouts:timeouts ->
  firewall_endpoint:string prop ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t

val make :
  ?disabled:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?parent:string prop ->
  ?tls_inspection_policy:string prop ->
  ?timeouts:timeouts ->
  firewall_endpoint:string prop ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t Tf_core.resource
