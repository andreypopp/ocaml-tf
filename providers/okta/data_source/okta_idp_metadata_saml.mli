(** Get SAML IdP metadata from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_idp_metadata_saml

val okta_idp_metadata_saml :
  ?id:string prop ->
  ?idp_id:string prop ->
  unit ->
  okta_idp_metadata_saml

val yojson_of_okta_idp_metadata_saml : okta_idp_metadata_saml -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assertions_signed : bool prop;
  authn_request_signed : bool prop;
  encryption_certificate : string prop;
  entity_id : string prop;
  http_post_binding : string prop;
  http_redirect_binding : string prop;
  id : string prop;
  idp_id : string prop;
  metadata : string prop;
  signing_certificate : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?idp_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?idp_id:string prop ->
  string ->
  t Tf_core.resource
