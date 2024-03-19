(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type accepter

val accepter :
  ?allow_remote_vpc_dns_resolution:bool prop -> unit -> accepter

type requester

val requester :
  ?allow_remote_vpc_dns_resolution:bool prop -> unit -> requester

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpc_peering_connection

val aws_vpc_peering_connection :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?peer_owner_id:string prop ->
  ?peer_region:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  peer_vpc_id:string prop ->
  vpc_id:string prop ->
  accepter:accepter list ->
  requester:requester list ->
  unit ->
  aws_vpc_peering_connection

val yojson_of_aws_vpc_peering_connection :
  aws_vpc_peering_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_status : string prop;
  auto_accept : bool prop;
  id : string prop;
  peer_owner_id : string prop;
  peer_region : string prop;
  peer_vpc_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?peer_owner_id:string prop ->
  ?peer_region:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  peer_vpc_id:string prop ->
  vpc_id:string prop ->
  accepter:accepter list ->
  requester:requester list ->
  string ->
  t
