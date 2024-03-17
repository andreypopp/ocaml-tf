(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_hub__timeouts

type google_network_connectivity_hub__routing_vpcs = {
  uri : string;  (** uri *)
}
[@@deriving yojson_of]

type google_network_connectivity_hub

val google_network_connectivity_hub :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_network_connectivity_hub__timeouts ->
  name:string ->
  string ->
  unit
