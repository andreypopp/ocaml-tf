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

type google_network_services_gateway

val google_network_services_gateway :
  ?addresses:string prop list ->
  ?certificate_urls:string prop list ->
  ?delete_swg_autogen_router_on_destroy:bool prop ->
  ?description:string prop ->
  ?gateway_security_policy:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?server_tls_policy:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  ports:float prop list ->
  type_:string prop ->
  unit ->
  google_network_services_gateway

val yojson_of_google_network_services_gateway :
  google_network_services_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  addresses : string list prop;
  certificate_urls : string list prop;
  create_time : string prop;
  delete_swg_autogen_router_on_destroy : bool prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  gateway_security_policy : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  network : string prop;
  ports : float list prop;
  project : string prop;
  scope : string prop;
  self_link : string prop;
  server_tls_policy : string prop;
  subnetwork : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?addresses:string prop list ->
  ?certificate_urls:string prop list ->
  ?delete_swg_autogen_router_on_destroy:bool prop ->
  ?description:string prop ->
  ?gateway_security_policy:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?server_tls_policy:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  ports:float prop list ->
  type_:string prop ->
  string ->
  t

val make :
  ?addresses:string prop list ->
  ?certificate_urls:string prop list ->
  ?delete_swg_autogen_router_on_destroy:bool prop ->
  ?description:string prop ->
  ?gateway_security_policy:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?server_tls_policy:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  ports:float prop list ->
  type_:string prop ->
  string ->
  t Tf_core.resource
