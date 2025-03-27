(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_saml_auth_backend

val vault_saml_auth_backend :
  ?default_role:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?idp_cert:string prop ->
  ?idp_entity_id:string prop ->
  ?idp_metadata_url:string prop ->
  ?idp_sso_url:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?verbose_logging:bool prop ->
  acs_urls:string prop list ->
  entity_id:string prop ->
  unit ->
  vault_saml_auth_backend

val yojson_of_vault_saml_auth_backend : vault_saml_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acs_urls : string list prop;
  default_role : string prop;
  disable_remount : bool prop;
  entity_id : string prop;
  id : string prop;
  idp_cert : string prop;
  idp_entity_id : string prop;
  idp_metadata_url : string prop;
  idp_sso_url : string prop;
  namespace : string prop;
  path : string prop;
  verbose_logging : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_role:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?idp_cert:string prop ->
  ?idp_entity_id:string prop ->
  ?idp_metadata_url:string prop ->
  ?idp_sso_url:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?verbose_logging:bool prop ->
  acs_urls:string prop list ->
  entity_id:string prop ->
  string ->
  t

val make :
  ?default_role:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?idp_cert:string prop ->
  ?idp_entity_id:string prop ->
  ?idp_metadata_url:string prop ->
  ?idp_sso_url:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?verbose_logging:bool prop ->
  acs_urls:string prop list ->
  entity_id:string prop ->
  string ->
  t Tf_core.resource
