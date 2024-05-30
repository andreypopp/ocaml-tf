(** This resource allows you to create and configure a SAML Identity Provider Signing Key. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_idp_saml_key

val okta_idp_saml_key :
  ?id:string prop ->
  x5c:string prop list ->
  unit ->
  okta_idp_saml_key

val yojson_of_okta_idp_saml_key : okta_idp_saml_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created : string prop;
  expires_at : string prop;
  id : string prop;
  kid : string prop;
  kty : string prop;
  use : string prop;
  x5c : string list prop;
  x5t_s256 : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  x5c:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  x5c:string prop list ->
  string ->
  t Tf_core.resource
