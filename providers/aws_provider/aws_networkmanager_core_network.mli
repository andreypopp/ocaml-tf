(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_core_network__timeouts

type aws_networkmanager_core_network__edges = {
  asn : float prop;  (** asn *)
  edge_location : string prop;  (** edge_location *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
}

type aws_networkmanager_core_network__segments = {
  edge_locations : string prop list;  (** edge_locations *)
  name : string prop;  (** name *)
  shared_segments : string prop list;  (** shared_segments *)
}

type aws_networkmanager_core_network

val aws_networkmanager_core_network :
  ?base_policy_document:string prop ->
  ?base_policy_region:string prop ->
  ?base_policy_regions:string prop list ->
  ?create_base_policy:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_core_network__timeouts ->
  global_network_id:string prop ->
  string ->
  unit
