(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_account

val digitalocean_account :
  ?id:string prop -> unit -> digitalocean_account

val yojson_of_digitalocean_account : digitalocean_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  droplet_limit : float prop;
  email : string prop;
  email_verified : bool prop;
  floating_ip_limit : float prop;
  id : string prop;
  status : string prop;
  status_message : string prop;
  uuid : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
