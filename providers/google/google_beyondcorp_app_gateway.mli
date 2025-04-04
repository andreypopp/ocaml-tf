(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allocated_connections = {
  ingress_port : float prop;  (** ingress_port *)
  psc_uri : string prop;  (** psc_uri *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_beyondcorp_app_gateway

val google_beyondcorp_app_gateway :
  ?display_name:string prop ->
  ?host_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_beyondcorp_app_gateway

val yojson_of_google_beyondcorp_app_gateway :
  google_beyondcorp_app_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocated_connections : allocated_connections list prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  host_type : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?host_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?host_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
