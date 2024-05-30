(** Manages rate limiting.
This resource allows you to configure the client-based rate limit and rate limiting communications settings.
~> **WARNING:** This resource is available only when using a SSWS API token in the provider config, it is incompatible with OAuth 2.0 authentication.
~> **WARNING:** This resource makes use of an internal/private Okta API endpoint that could change without notice rendering this resource inoperable. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_rate_limiting

val okta_rate_limiting :
  ?communications_enabled:bool prop ->
  ?id:string prop ->
  authorize:string prop ->
  login:string prop ->
  unit ->
  okta_rate_limiting

val yojson_of_okta_rate_limiting : okta_rate_limiting -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorize : string prop;
  communications_enabled : bool prop;
  id : string prop;
  login : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?communications_enabled:bool prop ->
  ?id:string prop ->
  authorize:string prop ->
  login:string prop ->
  string ->
  t

val make :
  ?communications_enabled:bool prop ->
  ?id:string prop ->
  authorize:string prop ->
  login:string prop ->
  string ->
  t Tf_core.resource
