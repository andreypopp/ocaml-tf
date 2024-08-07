(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accepter

val accepter :
  ?allow_remote_vpc_dns_resolution:bool prop -> unit -> accepter

type requester

val requester :
  ?allow_remote_vpc_dns_resolution:bool prop -> unit -> requester

type aws_vpc_peering_connection_options

val aws_vpc_peering_connection_options :
  ?id:string prop ->
  ?accepter:accepter list ->
  ?requester:requester list ->
  vpc_peering_connection_id:string prop ->
  unit ->
  aws_vpc_peering_connection_options

val yojson_of_aws_vpc_peering_connection_options :
  aws_vpc_peering_connection_options -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  vpc_peering_connection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?accepter:accepter list ->
  ?requester:requester list ->
  vpc_peering_connection_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?accepter:accepter list ->
  ?requester:requester list ->
  vpc_peering_connection_id:string prop ->
  string ->
  t Tf_core.resource
