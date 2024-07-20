(** The [Hyperdrive Config](https://developers.cloudflare.com/hyperdrive/) resource allows you to manage Cloudflare Hyperdrive Configs.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_hyperdrive_config

val cloudflare_hyperdrive_config :
  ?caching:json prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  origin:json prop ->
  unit ->
  cloudflare_hyperdrive_config

val yojson_of_cloudflare_hyperdrive_config :
  cloudflare_hyperdrive_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  caching : json prop;
  id : string prop;
  name : string prop;
  origin : json prop;
}

val register :
  ?tf_module:tf_module ->
  ?caching:json prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  origin:json prop ->
  string ->
  t

val make :
  ?caching:json prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  origin:json prop ->
  string ->
  t Tf_core.resource
