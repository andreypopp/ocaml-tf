(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_hub__timeouts

type google_network_connectivity_hub__routing_vpcs = {
  uri : string prop;  (** uri *)
}

type google_network_connectivity_hub

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  routing_vpcs :
    google_network_connectivity_hub__routing_vpcs list prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  unique_id : string prop;
  update_time : string prop;
}

val google_network_connectivity_hub :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_network_connectivity_hub__timeouts ->
  name:string prop ->
  string ->
  t
