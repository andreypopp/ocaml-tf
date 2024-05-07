(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule

val rule : type_:string prop -> value:string prop -> unit -> rule

type digitalocean_database_firewall

val digitalocean_database_firewall :
  ?id:string prop ->
  cluster_id:string prop ->
  rule:rule list ->
  unit ->
  digitalocean_database_firewall

val yojson_of_digitalocean_database_firewall :
  digitalocean_database_firewall -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_id:string prop ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_id:string prop ->
  rule:rule list ->
  string ->
  t Tf_core.resource
