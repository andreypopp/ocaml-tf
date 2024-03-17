(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_services_gateway__timeouts
type google_network_services_gateway

val google_network_services_gateway :
  ?certificate_urls:string list ->
  ?delete_swg_autogen_router_on_destroy:bool ->
  ?description:string ->
  ?gateway_security_policy:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?network:string ->
  ?scope:string ->
  ?server_tls_policy:string ->
  ?subnetwork:string ->
  ?timeouts:google_network_services_gateway__timeouts ->
  name:string ->
  ports:float list ->
  type_:string ->
  string ->
  unit
