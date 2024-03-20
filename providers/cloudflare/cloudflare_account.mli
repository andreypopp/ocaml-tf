(** Provides a Cloudflare Account resource. Account is the basic resource for
working with Cloudflare zones, teams and users.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_account

val cloudflare_account :
  ?enforce_twofactor:bool prop ->
  ?id:string prop ->
  ?type_:string prop ->
  name:string prop ->
  unit ->
  cloudflare_account

val yojson_of_cloudflare_account : cloudflare_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enforce_twofactor : bool prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enforce_twofactor:bool prop ->
  ?id:string prop ->
  ?type_:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?enforce_twofactor:bool prop ->
  ?id:string prop ->
  ?type_:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
