(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_services_gateway__timeouts
type google_network_services_gateway

type t = private {
  addresses : string list prop;
  certificate_urls : string list prop;
  create_time : string prop;
  delete_swg_autogen_router_on_destroy : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  gateway_security_policy : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  ports : float list prop;
  project : string prop;
  scope : string prop;
  self_link : string prop;
  server_tls_policy : string prop;
  subnetwork : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
}

val google_network_services_gateway :
  ?addresses:string prop list ->
  ?certificate_urls:string prop list ->
  ?delete_swg_autogen_router_on_destroy:bool prop ->
  ?description:string prop ->
  ?gateway_security_policy:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?server_tls_policy:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:google_network_services_gateway__timeouts ->
  name:string prop ->
  ports:float prop list ->
  type_:string prop ->
  string ->
  t
