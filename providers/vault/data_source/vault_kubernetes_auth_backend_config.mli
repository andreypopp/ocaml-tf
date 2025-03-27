(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kubernetes_auth_backend_config

val vault_kubernetes_auth_backend_config :
  ?backend:string prop ->
  ?disable_iss_validation:bool prop ->
  ?disable_local_ca_jwt:bool prop ->
  ?id:string prop ->
  ?issuer:string prop ->
  ?kubernetes_ca_cert:string prop ->
  ?kubernetes_host:string prop ->
  ?namespace:string prop ->
  ?pem_keys:string prop list ->
  ?use_annotations_as_alias_metadata:bool prop ->
  unit ->
  vault_kubernetes_auth_backend_config

val yojson_of_vault_kubernetes_auth_backend_config : vault_kubernetes_auth_backend_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  disable_iss_validation : bool prop;
  disable_local_ca_jwt : bool prop;
  id : string prop;
  issuer : string prop;
  kubernetes_ca_cert : string prop;
  kubernetes_host : string prop;
  namespace : string prop;
  pem_keys : string list prop;
  use_annotations_as_alias_metadata : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?disable_iss_validation:bool prop ->
  ?disable_local_ca_jwt:bool prop ->
  ?id:string prop ->
  ?issuer:string prop ->
  ?kubernetes_ca_cert:string prop ->
  ?kubernetes_host:string prop ->
  ?namespace:string prop ->
  ?pem_keys:string prop list ->
  ?use_annotations_as_alias_metadata:bool prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?disable_iss_validation:bool prop ->
  ?disable_local_ca_jwt:bool prop ->
  ?id:string prop ->
  ?issuer:string prop ->
  ?kubernetes_ca_cert:string prop ->
  ?kubernetes_host:string prop ->
  ?namespace:string prop ->
  ?pem_keys:string prop list ->
  ?use_annotations_as_alias_metadata:bool prop ->
  string ->
  t Tf_core.resource
