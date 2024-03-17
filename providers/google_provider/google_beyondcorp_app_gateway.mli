(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_beyondcorp_app_gateway__timeouts

type google_beyondcorp_app_gateway__allocated_connections = {
  ingress_port : float prop;  (** ingress_port *)
  psc_uri : string prop;  (** psc_uri *)
}

type google_beyondcorp_app_gateway

val google_beyondcorp_app_gateway :
  ?display_name:string prop ->
  ?host_type:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?timeouts:google_beyondcorp_app_gateway__timeouts ->
  name:string prop ->
  string ->
  unit
