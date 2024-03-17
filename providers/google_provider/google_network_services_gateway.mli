(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_services_gateway__timeouts
type google_network_services_gateway

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
  unit
