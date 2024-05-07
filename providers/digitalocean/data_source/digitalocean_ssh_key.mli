(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_ssh_key

val digitalocean_ssh_key :
  name:string prop -> unit -> digitalocean_ssh_key

val yojson_of_digitalocean_ssh_key : digitalocean_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fingerprint : string prop;
  id : float prop;
  name : string prop;
  public_key : string prop;
}

val register :
  ?tf_module:tf_module -> name:string prop -> string -> t

val make : name:string prop -> string -> t Tf_core.resource
