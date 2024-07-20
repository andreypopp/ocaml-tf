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

type google_network_security_firewall_endpoint

val google_network_security_firewall_endpoint :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  billing_project_id:string prop ->
  location:string prop ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_network_security_firewall_endpoint

val yojson_of_google_network_security_firewall_endpoint :
  google_network_security_firewall_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  associated_networks : string list prop;
  billing_project_id : string prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  reconciling : bool prop;
  self_link : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  billing_project_id:string prop ->
  location:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:timeouts ->
  billing_project_id:string prop ->
  location:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
