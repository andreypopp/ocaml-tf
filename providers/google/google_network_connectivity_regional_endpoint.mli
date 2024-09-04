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

type google_network_connectivity_regional_endpoint

val google_network_connectivity_regional_endpoint :
  ?address:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  access_type:string prop ->
  location:string prop ->
  name:string prop ->
  target_google_api:string prop ->
  unit ->
  google_network_connectivity_regional_endpoint

val yojson_of_google_network_connectivity_regional_endpoint :
  google_network_connectivity_regional_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_type : string prop;
  address : string prop;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  psc_forwarding_rule : string prop;
  subnetwork : string prop;
  target_google_api : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  access_type:string prop ->
  location:string prop ->
  name:string prop ->
  target_google_api:string prop ->
  string ->
  t

val make :
  ?address:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  access_type:string prop ->
  location:string prop ->
  name:string prop ->
  target_google_api:string prop ->
  string ->
  t Tf_core.resource
