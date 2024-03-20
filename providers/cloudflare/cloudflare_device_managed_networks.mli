(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config

val config :
  sha256:string prop -> tls_sockaddr:string prop -> unit -> config

type cloudflare_device_managed_networks

val cloudflare_device_managed_networks :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:config list ->
  unit ->
  cloudflare_device_managed_networks

val yojson_of_cloudflare_device_managed_networks :
  cloudflare_device_managed_networks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:config list ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:config list ->
  string ->
  t Tf_core.resource
