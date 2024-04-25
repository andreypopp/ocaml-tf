(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accepter

val accepter :
  ?allow_remote_vpc_dns_resolution:bool prop -> unit -> accepter

type requester

val requester :
  ?allow_remote_vpc_dns_resolution:bool prop -> unit -> requester

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_vpc_peering_connection_accepter

val aws_vpc_peering_connection_accepter :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?accepter:accepter list ->
  ?requester:requester list ->
  ?timeouts:timeouts ->
  vpc_peering_connection_id:string prop ->
  unit ->
  aws_vpc_peering_connection_accepter

val yojson_of_aws_vpc_peering_connection_accepter :
  aws_vpc_peering_connection_accepter -> json

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
  vpc_peering_connection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?accepter:accepter list ->
  ?requester:requester list ->
  ?timeouts:timeouts ->
  vpc_peering_connection_id:string prop ->
  string ->
  t

val make :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?accepter:accepter list ->
  ?requester:requester list ->
  ?timeouts:timeouts ->
  vpc_peering_connection_id:string prop ->
  string ->
  t Tf_core.resource
