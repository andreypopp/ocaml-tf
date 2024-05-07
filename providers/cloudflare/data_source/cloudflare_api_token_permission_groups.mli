(** Use this data source to look up [API Token Permission Groups](https://developers.cloudflare.com/api/tokens/create/permissions).
Commonly used as references within [`cloudflare_token`](/docs/providers/cloudflare/r/api_token.html) resources.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_api_token_permission_groups

val cloudflare_api_token_permission_groups :
  unit -> cloudflare_api_token_permission_groups

val yojson_of_cloudflare_api_token_permission_groups :
  cloudflare_api_token_permission_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account : (string * string) list prop;
  id : string prop;
  permissions : (string * string) list prop;
  r2 : (string * string) list prop;
  user : (string * string) list prop;
  zone : (string * string) list prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
