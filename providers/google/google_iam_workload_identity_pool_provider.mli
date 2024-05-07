(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws

val aws : account_id:string prop -> unit -> aws

type oidc

val oidc :
  ?allowed_audiences:string prop list ->
  ?jwks_json:string prop ->
  issuer_uri:string prop ->
  unit ->
  oidc

type saml

val saml : idp_metadata_xml:string prop -> unit -> saml

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_iam_workload_identity_pool_provider

val google_iam_workload_identity_pool_provider :
  ?attribute_condition:string prop ->
  ?attribute_mapping:(string * string prop) list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?aws:aws list ->
  ?oidc:oidc list ->
  ?saml:saml list ->
  ?timeouts:timeouts ->
  workload_identity_pool_id:string prop ->
  workload_identity_pool_provider_id:string prop ->
  unit ->
  google_iam_workload_identity_pool_provider

val yojson_of_google_iam_workload_identity_pool_provider :
  google_iam_workload_identity_pool_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attribute_condition : string prop;
  attribute_mapping : (string * string) list prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  workload_identity_pool_id : string prop;
  workload_identity_pool_provider_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?attribute_condition:string prop ->
  ?attribute_mapping:(string * string prop) list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?aws:aws list ->
  ?oidc:oidc list ->
  ?saml:saml list ->
  ?timeouts:timeouts ->
  workload_identity_pool_id:string prop ->
  workload_identity_pool_provider_id:string prop ->
  string ->
  t

val make :
  ?attribute_condition:string prop ->
  ?attribute_mapping:(string * string prop) list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?aws:aws list ->
  ?oidc:oidc list ->
  ?saml:saml list ->
  ?timeouts:timeouts ->
  workload_identity_pool_id:string prop ->
  workload_identity_pool_provider_id:string prop ->
  string ->
  t Tf_core.resource
