(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_core_network__timeouts

type aws_networkmanager_core_network__edges = {
  asn : float;  (** asn *)
  edge_location : string;  (** edge_location *)
  inside_cidr_blocks : string list;  (** inside_cidr_blocks *)
}
[@@deriving yojson_of]

type aws_networkmanager_core_network__segments = {
  edge_locations : string list;  (** edge_locations *)
  name : string;  (** name *)
  shared_segments : string list;  (** shared_segments *)
}
[@@deriving yojson_of]

type aws_networkmanager_core_network

val aws_networkmanager_core_network :
  ?base_policy_document:string ->
  ?base_policy_region:string ->
  ?base_policy_regions:string list ->
  ?create_base_policy:bool ->
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_networkmanager_core_network__timeouts ->
  global_network_id:string ->
  string ->
  unit
