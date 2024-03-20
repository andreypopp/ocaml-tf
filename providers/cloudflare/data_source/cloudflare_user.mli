(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_user

val cloudflare_user : unit -> cloudflare_user
val yojson_of_cloudflare_user : cloudflare_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  email : string prop;
  id : string prop;
  username : string prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
