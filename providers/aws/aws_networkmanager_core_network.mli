(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type edges = {
  asn : float prop;  (** asn *)
  edge_location : string prop;  (** edge_location *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
}

type segments = {
  edge_locations : string prop list;  (** edge_locations *)
  name : string prop;  (** name *)
  shared_segments : string prop list;  (** shared_segments *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_core_network

val yojson_of_aws_networkmanager_core_network :
  aws_networkmanager_core_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  base_policy_document : string prop;
  base_policy_region : string prop;
  base_policy_regions : string list prop;
  create_base_policy : bool prop;
  created_at : string prop;
  description : string prop;
  edges : edges list prop;
  global_network_id : string prop;
  id : string prop;
  segments : segments list prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_policy_document:string prop ->
  ?base_policy_region:string prop ->
  ?base_policy_regions:string prop list ->
  ?create_base_policy:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?base_policy_document:string prop ->
  ?base_policy_region:string prop ->
  ?base_policy_regions:string prop list ->
  ?create_base_policy:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource
