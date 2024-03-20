(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_ssh_key

val digitalocean_ssh_key :
  ?id:string prop ->
  name:string prop ->
  public_key:string prop ->
  unit ->
  digitalocean_ssh_key

val yojson_of_digitalocean_ssh_key : digitalocean_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  public_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  public_key:string prop ->
  string ->
  t Tf_core.resource
