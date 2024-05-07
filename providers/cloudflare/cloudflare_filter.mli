(** Filter expressions that can be referenced across multiple features,
e.g. Firewall Rules. See [what is a filter](https://developers.cloudflare.com/firewall/api/cf-filters/what-is-a-filter/)
for more details and available fields and operators.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_filter

val cloudflare_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?ref:string prop ->
  expression:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_filter

val yojson_of_cloudflare_filter : cloudflare_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  expression : string prop;
  id : string prop;
  paused : bool prop;
  ref : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?ref:string prop ->
  expression:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?ref:string prop ->
  expression:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
