(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_hub__timeouts

type google_network_connectivity_hub__routing_vpcs = {
  uri : string prop;  (** uri *)
}

type google_network_connectivity_hub

val google_network_connectivity_hub :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_network_connectivity_hub__timeouts ->
  name:string prop ->
  string ->
  unit
