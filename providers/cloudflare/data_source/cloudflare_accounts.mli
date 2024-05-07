(** Data source for looking up Cloudflare Accounts. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accounts = {
  enforce_twofactor : bool prop;  (** enforce_twofactor *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type cloudflare_accounts

val cloudflare_accounts :
  ?id:string prop -> ?name:string prop -> unit -> cloudflare_accounts

val yojson_of_cloudflare_accounts : cloudflare_accounts -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accounts : accounts list prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
