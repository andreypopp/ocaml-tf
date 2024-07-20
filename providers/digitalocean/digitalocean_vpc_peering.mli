(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type digitalocean_vpc_peering

val digitalocean_vpc_peering :
  ?timeouts:timeouts ->
  name:string prop ->
  vpc_ids:string prop list ->
  unit ->
  digitalocean_vpc_peering

val yojson_of_digitalocean_vpc_peering :
  digitalocean_vpc_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  vpc_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  name:string prop ->
  vpc_ids:string prop list ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  name:string prop ->
  vpc_ids:string prop list ->
  string ->
  t Tf_core.resource
