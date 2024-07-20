(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_vpc_peering

val digitalocean_vpc_peering :
  ?id:string prop ->
  ?name:string prop ->
  ?vpc_ids:string prop list ->
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
  ?id:string prop ->
  ?name:string prop ->
  ?vpc_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?vpc_ids:string prop list ->
  string ->
  t Tf_core.resource
