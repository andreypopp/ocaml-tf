(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type saml_options__idp

val saml_options__idp :
  entity_id:string prop ->
  metadata_content:string prop ->
  unit ->
  saml_options__idp

type saml_options

val saml_options :
  ?enabled:bool prop ->
  ?master_backend_role:string prop ->
  ?master_user_name:string prop ->
  ?roles_key:string prop ->
  ?session_timeout_minutes:float prop ->
  ?subject_key:string prop ->
  ?idp:saml_options__idp list ->
  unit ->
  saml_options

type timeouts

val timeouts :
  ?delete:string prop -> ?update:string prop -> unit -> timeouts

type aws_opensearch_domain_saml_options

val aws_opensearch_domain_saml_options :
  ?id:string prop ->
  ?saml_options:saml_options list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  unit ->
  aws_opensearch_domain_saml_options

val yojson_of_aws_opensearch_domain_saml_options :
  aws_opensearch_domain_saml_options -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?saml_options:saml_options list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?saml_options:saml_options list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
