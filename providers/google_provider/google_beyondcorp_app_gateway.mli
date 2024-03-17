(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_beyondcorp_app_gateway__timeouts

type google_beyondcorp_app_gateway__allocated_connections = {
  ingress_port : float;  (** ingress_port *)
  psc_uri : string;  (** psc_uri *)
}

type google_beyondcorp_app_gateway

val google_beyondcorp_app_gateway :
  ?display_name:string ->
  ?host_type:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?region:string ->
  ?type_:string ->
  ?timeouts:google_beyondcorp_app_gateway__timeouts ->
  name:string ->
  string ->
  unit
