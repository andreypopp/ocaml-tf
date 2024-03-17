(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_hub__timeouts

type google_network_connectivity_hub__routing_vpcs = {
  uri : string;  (** uri *)
}

type google_network_connectivity_hub

val google_network_connectivity_hub :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_network_connectivity_hub__timeouts ->
  name:string ->
  string ->
  unit
