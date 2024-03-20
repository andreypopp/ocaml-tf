(** Provides a resource which manages Cloudflare API tokens.

Read more about permission groups and their applicable scopes in the
[developer documentation](https://developers.cloudflare.com/api/tokens/create/permissions).
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition__request_ip

val condition__request_ip :
  ?in_:string prop list ->
  ?not_in:string prop list ->
  unit ->
  condition__request_ip

type condition

val condition :
  request_ip:condition__request_ip list -> unit -> condition

type policy

val policy :
  ?effect:string prop ->
  permission_groups:string prop list ->
  resources:(string * string prop) list ->
  unit ->
  policy

type cloudflare_api_token

val cloudflare_api_token :
  ?expires_on:string prop ->
  ?id:string prop ->
  ?not_before:string prop ->
  name:string prop ->
  condition:condition list ->
  policy:policy list ->
  unit ->
  cloudflare_api_token

val yojson_of_cloudflare_api_token : cloudflare_api_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  expires_on : string prop;
  id : string prop;
  issued_on : string prop;
  modified_on : string prop;
  name : string prop;
  not_before : string prop;
  status : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expires_on:string prop ->
  ?id:string prop ->
  ?not_before:string prop ->
  name:string prop ->
  condition:condition list ->
  policy:policy list ->
  string ->
  t

val make :
  ?expires_on:string prop ->
  ?id:string prop ->
  ?not_before:string prop ->
  name:string prop ->
  condition:condition list ->
  policy:policy list ->
  string ->
  t Tf_core.resource
