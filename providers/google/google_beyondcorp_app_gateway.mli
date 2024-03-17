(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_beyondcorp_app_gateway__timeouts

type google_beyondcorp_app_gateway__allocated_connections = {
  ingress_port : float prop;  (** ingress_port *)
  psc_uri : string prop;  (** psc_uri *)
}

type google_beyondcorp_app_gateway

type t = private {
  allocated_connections :
    google_beyondcorp_app_gateway__allocated_connections list prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  host_type : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  uri : string prop;
}

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
  t
