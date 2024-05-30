(** Get a SAML application's metadata from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_metadata_saml

val okta_app_metadata_saml :
  ?id:string prop ->
  ?key_id:string prop ->
  app_id:string prop ->
  unit ->
  okta_app_metadata_saml

val yojson_of_okta_app_metadata_saml : okta_app_metadata_saml -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  certificate : string prop;
  entity_id : string prop;
  http_post_binding : string prop;
  http_redirect_binding : string prop;
  id : string prop;
  key_id : string prop;
  metadata : string prop;
  want_authn_requests_signed : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_id:string prop ->
  app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?key_id:string prop ->
  app_id:string prop ->
  string ->
  t Tf_core.resource
