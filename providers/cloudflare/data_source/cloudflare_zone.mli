(** Use this data source to look up [zone](https://api.cloudflare.com/#zone-properties)
info. This is the singular alternative to `cloudflare_zones`.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_zone

val cloudflare_zone :
  ?account_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?zone_id:string prop ->
  unit ->
  cloudflare_zone

val yojson_of_cloudflare_zone : cloudflare_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
  name_servers : string list prop;
  paused : bool prop;
  plan : string prop;
  status : string prop;
  vanity_name_servers : string list prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?zone_id:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?zone_id:string prop ->
  string ->
  t Tf_core.resource
