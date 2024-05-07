(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type device_options

val device_options : ?tenant_id:string prop -> unit -> device_options

type oidc_options

val oidc_options :
  ?authorization_endpoint:string prop ->
  ?client_id:string prop ->
  ?issuer:string prop ->
  ?scope:string prop ->
  ?token_endpoint:string prop ->
  ?user_info_endpoint:string prop ->
  client_secret:string prop ->
  unit ->
  oidc_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_verifiedaccess_trust_provider

val aws_verifiedaccess_trust_provider :
  ?description:string prop ->
  ?device_trust_provider_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_trust_provider_type:string prop ->
  ?device_options:device_options list ->
  ?oidc_options:oidc_options list ->
  ?timeouts:timeouts ->
  policy_reference_name:string prop ->
  trust_provider_type:string prop ->
  unit ->
  aws_verifiedaccess_trust_provider

val yojson_of_aws_verifiedaccess_trust_provider :
  aws_verifiedaccess_trust_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  device_trust_provider_type : string prop;
  id : string prop;
  policy_reference_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trust_provider_type : string prop;
  user_trust_provider_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?device_trust_provider_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_trust_provider_type:string prop ->
  ?device_options:device_options list ->
  ?oidc_options:oidc_options list ->
  ?timeouts:timeouts ->
  policy_reference_name:string prop ->
  trust_provider_type:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?device_trust_provider_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_trust_provider_type:string prop ->
  ?device_options:device_options list ->
  ?oidc_options:oidc_options list ->
  ?timeouts:timeouts ->
  policy_reference_name:string prop ->
  trust_provider_type:string prop ->
  string ->
  t Tf_core.resource
