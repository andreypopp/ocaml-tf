(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cidr_block_set = { cidr_block : string prop  (** cidr_block *) }

type peer_cidr_block_set = {
  cidr_block : string prop;  (** cidr_block *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpc_peering_connection

val aws_vpc_peering_connection :
  ?cidr_block:string prop ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?peer_cidr_block:string prop ->
  ?peer_owner_id:string prop ->
  ?peer_region:string prop ->
  ?peer_vpc_id:string prop ->
  ?region:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_vpc_peering_connection

val yojson_of_aws_vpc_peering_connection :
  aws_vpc_peering_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accepter : (string * bool) list prop;
  cidr_block : string prop;
  cidr_block_set : cidr_block_set list prop;
  id : string prop;
  owner_id : string prop;
  peer_cidr_block : string prop;
  peer_cidr_block_set : peer_cidr_block_set list prop;
  peer_owner_id : string prop;
  peer_region : string prop;
  peer_vpc_id : string prop;
  region : string prop;
  requester : (string * bool) list prop;
  status : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr_block:string prop ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?peer_cidr_block:string prop ->
  ?peer_owner_id:string prop ->
  ?peer_region:string prop ->
  ?peer_vpc_id:string prop ->
  ?region:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?cidr_block:string prop ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?peer_cidr_block:string prop ->
  ?peer_owner_id:string prop ->
  ?peer_region:string prop ->
  ?peer_vpc_id:string prop ->
  ?region:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
