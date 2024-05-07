(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ssh_keys = {
  fingerprint : string prop;  (** fingerprint *)
  id : float prop;  (** id *)
  name : string prop;  (** name *)
  public_key : string prop;  (** public_key *)
}

type filter

val filter :
  ?all:bool prop ->
  ?match_by:string prop ->
  key:string prop ->
  values:string prop list ->
  unit ->
  filter

type sort

val sort : ?direction:string prop -> key:string prop -> unit -> sort

type digitalocean_ssh_keys

val digitalocean_ssh_keys :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  unit ->
  digitalocean_ssh_keys

val yojson_of_digitalocean_ssh_keys : digitalocean_ssh_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ssh_keys : ssh_keys list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
